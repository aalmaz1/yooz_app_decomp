.class public Lcn/baos/watch/sdk/old/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final CRASH_REPORTER_EXTENSION:Ljava/lang/String; = ".cr"

.field public static final DEBUG:Z = false

.field private static INSTANCE:Lcn/baos/watch/sdk/old/CrashHandler; = null

.field private static final STACK_TRACE:Ljava/lang/String; = "STACK_TRACE"

.field public static final TAG:Ljava/lang/String; = "w100log"

.field private static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static syncRoot:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mDeviceCrashInfo:Ljava/util/Properties;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcn/baos/watch/sdk/old/CrashHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/old/CrashHandler;->syncRoot:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    return-void
.end method

.method private collectCrashDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 13

    const-string v0, "w100log"

    const-string v1, ""

    const/4 v2, 0x1

    .line 170
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 174
    iget-object v3, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v4, "versionName"

    .line 175
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_1e

    const-string v5, "not set"

    goto :goto_20

    :cond_1e
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 174
    :goto_20
    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v3, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    const-string v4, "versionCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_39} :catch_3a

    goto :goto_4d

    :catch_3a
    move-exception p1

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while collect package info"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_4d
    :goto_4d
    const-class p1, Landroid/os/Build;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 184
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    array-length v4, p1

    const/4 v5, 0x0

    :goto_5a
    if-ge v5, v4, :cond_97

    aget-object v6, p1, v5

    .line 187
    :try_start_5e
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    iget-object v7, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_80} :catch_81

    goto :goto_94

    :catch_81
    move-exception v6

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error while collect crash info"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_94
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 197
    :cond_97
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcn/baos/watch/sdk/old/CrashHandler;
    .registers 2

    .line 48
    sget-object v0, Lcn/baos/watch/sdk/old/CrashHandler;->INSTANCE:Lcn/baos/watch/sdk/old/CrashHandler;

    if-nez v0, :cond_17

    .line 49
    sget-object v0, Lcn/baos/watch/sdk/old/CrashHandler;->syncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/old/CrashHandler;->INSTANCE:Lcn/baos/watch/sdk/old/CrashHandler;

    if-nez v1, :cond_12

    .line 51
    new-instance v1, Lcn/baos/watch/sdk/old/CrashHandler;

    invoke-direct {v1}, Lcn/baos/watch/sdk/old/CrashHandler;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/old/CrashHandler;->INSTANCE:Lcn/baos/watch/sdk/old/CrashHandler;

    .line 53
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 55
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/old/CrashHandler;->INSTANCE:Lcn/baos/watch/sdk/old/CrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 106
    :cond_4
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/old/CrashHandler;->saveCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 107
    new-instance p1, Lcn/baos/watch/sdk/old/CrashHandler$1;

    invoke-direct {p1, p0}, Lcn/baos/watch/sdk/old/CrashHandler$1;-><init>(Lcn/baos/watch/sdk/old/CrashHandler;)V

    .line 118
    invoke-virtual {p1}, Lcn/baos/watch/sdk/old/CrashHandler$1;->start()V

    return v0
.end method

.method private saveCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8

    const-string v0, "w100log"

    .line 124
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    iget-object v2, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mDeviceCrashInfo:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 127
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 131
    :cond_46
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 132
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 133
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_57
    if-eqz p1, :cond_61

    .line 136
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_57

    .line 139
    :cond_61
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 140
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 145
    :try_start_6c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crash-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_95} :catch_dc

    .line 148
    :try_start_95
    iget-object v3, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mContext:Landroid/content/Context;

    const-string v4, "watchSdkLog"

    invoke-static {v3, v4}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a4

    return-object p1

    .line 151
    :cond_a4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crash log: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 155
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 156
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_d9} :catch_da

    goto :goto_e4

    :catch_da
    move-exception p1

    goto :goto_df

    :catch_dc
    move-exception v1

    move-object v2, p1

    move-object p1, v1

    :goto_df
    const-string v1, "an error occured while writing file..."

    .line 158
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e4
    return-object v2
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 61
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 62
    iget-object p1, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/old/CrashHandler;->collectCrashDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    const-string p1, "Crash Handler Init"

    .line 63
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "--uncaughtException Throwable:"

    const-string v1, "--uncaughtException:"

    :try_start_4
    const-string v2, "--uncaughtException"

    .line 72
    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_5e
    invoke-direct {p0, p2}, Lcn/baos/watch/sdk/old/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcn/baos/watch/sdk/old/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_6c

    .line 82
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_90

    :cond_6c
    const-wide/16 p1, 0x3e8

    .line 85
    :try_start_6e
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_85

    :catch_72
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 89
    :goto_85
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    .line 90
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_90
    return-void
.end method
