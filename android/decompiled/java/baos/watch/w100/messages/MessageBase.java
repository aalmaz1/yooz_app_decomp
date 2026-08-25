package cn.baos.watch.w100.messages;

import cn.baos.message.Serializable;
import java.io.IOException;
import org.msgpack.core.MessagePacker;
import org.msgpack.core.MessageUnpacker;

public class MessageBase extends Serializable {
    public int addtime;
    public int id;
    public int rank;
    public int tag;

    @Override
    public boolean put(MessagePacker packer) throws IOException {
        super.put(packer);
        packer.packLong(id);
        packer.packLong(rank);
        packer.packLong(addtime);
        packer.packLong(tag);
        return true;
    }

    @Override
    public MessageBase load(MessageUnpacker unpacker) throws IOException {
        super.load(unpacker);
        id = (int) unpacker.unpackLong();
        rank = (int) unpacker.unpackLong();
        addtime = (int) unpacker.unpackLong();
        tag = (int) unpacker.unpackLong();
        return this;
    }

    public MessageBase() {
        this.catagory = 100;
    }
}
