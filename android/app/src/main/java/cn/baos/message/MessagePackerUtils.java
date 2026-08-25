package cn.baos.message;

import java.io.IOException;
import java.nio.ByteBuffer;
import org.msgpack.core.MessageBufferPacker;
import org.msgpack.core.MessagePack;

public class MessagePackerUtils<T extends Serializable> {
    public static final int RESERVE_SIZE = 4;

    public byte[] packObject(T t) throws IOException {
        MessageBufferPacker packer = MessagePack.newDefaultBufferPacker();
        t.put(packer);
        packer.close();
        byte[] payload = packer.toByteArray();
        return ByteBuffer.allocate(payload.length + 4).putInt(payload.length + 4).put(payload).array();
    }

    public static Serializable uppackObject(byte[] data) throws IOException {
        int declared = ByteBuffer.wrap(data).getInt();
        if (declared < data.length) {
            throw new IOException("tructed data");
        }
        int cat = new Serializable().load(MessagePack.newDefaultUnpacker(data, 4, data.length - 4)).catagory;
        Serializable inst = newInstanceFromCategory(cat);
        if (inst == null) {
            return null;
        }
        return inst.load(MessagePack.newDefaultUnpacker(data, 4, data.length - 4));
    }

    public static Serializable newInstanceFromCategory(int category) {
        try {
            String name = CatagoryEnum.classCatagoryMap.get(category);
            if (name == null) {
                return null;
            }
            return (Serializable) Class.forName(name).newInstance();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
