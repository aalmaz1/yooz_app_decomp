package cn.baos.watch.sdk.manager.message;

/**
 * Bind from MessageManager:
 * send CommandPhoneAskPair { match_code, phone_type, rank=20 }
 * codes: 888 bind, 777 unbind, 1111 post-TX, 1000-9999 first W200
 * reply CommandPhonePairResult (10020): pair_result==1 success
 * Unbound devices only accept packets whose JSON contains "match_code".
 */
public final class BindProtocol {
    public static final int CODE_BIND = 888;
    public static final int CODE_UNBIND = 777;
    public static final int CODE_AFTER_TX = 1111;
    public static final int RANK = 20;
    public static final int PAIR_RESULT_OK = 1;
    public static final int CAT_PAIR_RESULT = 10020;
    public static final int CAT_PHONE_ASK_PAIR = 10021;

    private BindProtocol() {}
}
