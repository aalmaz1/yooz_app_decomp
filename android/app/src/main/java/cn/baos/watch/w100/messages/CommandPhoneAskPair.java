package cn.baos.watch.w100.messages;

import cn.baos.message.CatagoryEnum;
import java.io.IOException;
import org.msgpack.core.MessagePacker;
import org.msgpack.core.MessageUnpacker;

public class CommandPhoneAskPair extends MessageBase {
    public int match_code;
    public String phone_type;

    @Override
    public boolean put(MessagePacker packer) throws IOException {
        super.put(packer);
        if (phone_type == null) {
            phone_type = "";
        }
        packer.packString(phone_type);
        packer.packLong(match_code);
        return true;
    }

    @Override
    public CommandPhoneAskPair load(MessageUnpacker unpacker) throws IOException {
        super.load(unpacker);
        phone_type = unpacker.unpackString();
        match_code = (int) unpacker.unpackLong();
        return this;
    }

    public CommandPhoneAskPair() {
        this.catagory = CatagoryEnum.COMMANDPHONEASKPAIR;
    }
}
