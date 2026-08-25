package cn.baos.watch.sdk.manager.message;

import cn.baos.message.Serializable;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.msgpack.core.MessageBufferPacker;
import org.msgpack.core.MessagePack;

/** Wire format: int32be(totalLen) + msgpack(catagory, ...). */
public final class MessageCodec {
    public static byte[] packMessage(Serializable serializable) {
        if (serializable == null) {
            return new byte[0];
        }
        MessageBufferPacker packer = MessagePack.newDefaultBufferPacker();
        try {
            serializable.put(packer);
        } catch (IOException e) {
            e.printStackTrace();
        }
        byte[] payload = packer.toByteArray();
        ByteBuffer buf = ByteBuffer.allocate(payload.length + 4);
        buf.putInt(payload.length + 4);
        buf.put(payload);
        return buf.compact().array();
    }

    private MessageCodec() {}
}
