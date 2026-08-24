package cn.baos.message;

import java.io.IOException;
import org.msgpack.core.MessagePacker;
import org.msgpack.core.MessageUnpacker;

public class Serializable {
    public int catagory;

    public boolean put(MessagePacker packer) throws IOException {
        packer.packLong(catagory);
        return true;
    }

    public Serializable load(MessageUnpacker unpacker) throws IOException {
        catagory = unpacker.unpackInt();
        return this;
    }
}
