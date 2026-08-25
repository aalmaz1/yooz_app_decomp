package cn.baos.watch.w100.messages;

import cn.baos.message.CatagoryEnum;
import cn.baos.message.Serializable;
import java.io.IOException;
import org.msgpack.core.MessagePacker;
import org.msgpack.core.MessageUnpacker;

public class Request_get_data extends Serializable {
    public int data_catagary;
    public int enum_param;
    public int last_data_timestamp;

    @Override
    public boolean put(MessagePacker packer) throws IOException {
        super.put(packer);
        packer.packLong(data_catagary);
        packer.packLong(last_data_timestamp);
        packer.packLong(enum_param);
        return true;
    }

    @Override
    public Request_get_data load(MessageUnpacker unpacker) throws IOException {
        super.load(unpacker);
        data_catagary = (int) unpacker.unpackLong();
        last_data_timestamp = (int) unpacker.unpackLong();
        enum_param = (int) unpacker.unpackLong();
        return this;
    }

    public Request_get_data() {
        this.catagory = CatagoryEnum.REQUEST_GET_DATA;
    }
}
