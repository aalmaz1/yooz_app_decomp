package cn.baos.watch.w100.messages;

import cn.baos.message.CatagoryEnum;
import cn.baos.message.Serializable;
import java.io.IOException;
import org.msgpack.core.MessagePacker;
import org.msgpack.core.MessageUnpacker;

/** BLE config blob. Index 134 = e-liquid / cigarette level. */
public class Config_items extends Serializable {
    public int[] datas;

    @Override
    public boolean put(MessagePacker packer) throws IOException {
        super.put(packer);
        if (datas != null) {
            packer.packLong(datas.length);
            for (int v : datas) {
                packer.packLong(v);
            }
        } else {
            packer.packLong(0L);
        }
        return true;
    }

    @Override
    public Config_items load(MessageUnpacker unpacker) throws IOException {
        super.load(unpacker);
        int n = (int) unpacker.unpackLong();
        if (n > 0) {
            datas = new int[n];
            for (int i = 0; i < n; i++) {
                datas[i] = (int) unpacker.unpackLong();
            }
        }
        return this;
    }

    public Config_items() {
        this.catagory = CatagoryEnum.CONFIG_ITEMS;
    }
}
