package cn.baos.watch.w100.messages;

import cn.baos.message.CatagoryEnum;
import java.io.IOException;
import org.msgpack.core.MessagePacker;
import org.msgpack.core.MessageUnpacker;

public class CommandPhonePairResult extends MessageBase {
    public int pair_result;

    @Override
    public boolean put(MessagePacker packer) throws IOException {
        super.put(packer);
        packer.packLong(pair_result);
        return true;
    }

    @Override
    public CommandPhonePairResult load(MessageUnpacker unpacker) throws IOException {
        super.load(unpacker);
        pair_result = (int) unpacker.unpackLong();
        return this;
    }

    public CommandPhonePairResult() {
        this.catagory = CatagoryEnum.COMMANDPHONEPAIRRESULT;
    }
}
