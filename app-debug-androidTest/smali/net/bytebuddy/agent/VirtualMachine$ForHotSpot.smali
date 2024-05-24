.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.super Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForHotSpot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
    }
.end annotation


# static fields
.field private static final ARGUMENT_DELIMITER:Ljava/lang/String; = "="

.field private static final INSTRUMENT_COMMAND:Ljava/lang/String; = "instrument"

.field private static final LOAD_COMMAND:Ljava/lang/String; = "load"

.field private static final PROTOCOL_VERSION:Ljava/lang/String; = "1"


# instance fields
.field private final connection:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;)V
    .locals 0
    .param p1, "connection"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    .line 226
    invoke-direct {p0}, Lnet/bytebuddy/agent/VirtualMachine$AbstractBase;-><init>()V

    .line 227
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connection:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    .line 228
    return-void
.end method

.method public static attach(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine;
    .locals 5
    .param p0, "processId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;

    invoke-direct {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaWindowsNamedPipe$Factory;-><init>()V

    invoke-static {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->attach(Ljava/lang/String;Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;)Lnet/bytebuddy/agent/VirtualMachine;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    invoke-static {}, Lcom/sun/jna/Platform;->isSolaris()Z

    move-result v0

    const-wide/16 v1, 0x64

    const/16 v3, 0xf

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Factory;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Factory;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-static {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->attach(Ljava/lang/String;Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;)Lnet/bytebuddy/agent/VirtualMachine;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v1, v2, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaPosixSocket$Factory;->withDefaultTemporaryFolder(IJLjava/util/concurrent/TimeUnit;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->attach(Ljava/lang/String;Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;)Lnet/bytebuddy/agent/VirtualMachine;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Ljava/lang/String;Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;)Lnet/bytebuddy/agent/VirtualMachine;
    .locals 2
    .param p0, "processId"    # Ljava/lang/String;
    .param p1, "connectionFactory"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;

    invoke-interface {p1, p0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;->connect(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;-><init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;)V

    return-object v0
.end method

.method private static checkHeader(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;)V
    .locals 7
    .param p0, "response"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 267
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    invoke-interface {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    .line 270
    if-lez v3, :cond_0

    .line 271
    aget-byte v2, v0, v5

    const/16 v6, 0xa

    if-ne v2, v6, :cond_1

    .line 272
    goto :goto_1

    .line 274
    :cond_1
    aget-byte v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 277
    :cond_2
    :goto_1
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 283
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 284
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v6

    goto :goto_2

    .line 281
    :sswitch_0
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Protocol mismatch with target VM"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :sswitch_1
    return-void

    .line 285
    :goto_2
    invoke-interface {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->read([B)I

    move-result v6

    move v3, v6

    if-eq v6, v4, :cond_3

    .line 286
    invoke-virtual {v1, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 288
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private getProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connection:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    const/4 v1, 0x0

    filled-new-array {p1, v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v2, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;->execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;

    move-result-object v0

    .line 316
    .local v0, "response":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    :try_start_0
    invoke-static {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->checkHeader(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;)V

    .line 317
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 318
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 320
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-interface {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "length":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 321
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 323
    :cond_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 324
    .local v3, "properties":Ljava/util/Properties;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    nop

    .line 327
    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 325
    return-object v3

    .line 327
    .end local v1    # "buffer":[B
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v4    # "length":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 328
    throw v1
.end method


# virtual methods
.method public detach()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connection:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;->close()V

    .line 419
    return-void
.end method

.method public getAgentProperties()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-string v0, "agentProperties"

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->getProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperties()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    const-string v0, "properties"

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->getProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method protected load(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "absolute"    # Z
    .param p3, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connection:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "load"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "instrument"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    if-nez p3, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "1"

    invoke-interface {v0, v2, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;->execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;

    move-result-object v0

    .line 365
    .local v0, "response":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    :try_start_0
    invoke-static {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->checkHeader(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 368
    nop

    .line 369
    return-void

    .line 367
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 368
    throw v1
.end method

.method public loadAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "jarFile"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->load(Ljava/lang/String;ZLjava/lang/String;)V

    .line 336
    return-void
.end method

.method public loadAgentLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "library"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->load(Ljava/lang/String;ZLjava/lang/String;)V

    .line 350
    return-void
.end method

.method public loadAgentPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->load(Ljava/lang/String;ZLjava/lang/String;)V

    .line 343
    return-void
.end method

.method public startLocalManagementAgent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connection:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    const-string v1, "ManagementAgent.start_local"

    const/4 v2, 0x0

    const-string v3, "jcmd"

    filled-new-array {v3, v1, v2, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v2, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;->execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;

    move-result-object v0

    .line 407
    .local v0, "response":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    :try_start_0
    invoke-static {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->checkHeader(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;)V

    .line 408
    invoke-virtual {p0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->getAgentProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "com.sun.management.jmxremote.localConnectorAddress"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 408
    return-object v1

    .line 410
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 411
    throw v1
.end method

.method public startManagementAgent(Ljava/util/Properties;)V
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ManagementAgent.start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 377
    .local v1, "first":Z
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 378
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "com.sun.management."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x0

    goto :goto_1

    .line 383
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "value":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 388
    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 390
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 379
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal property name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connection:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    const-string v3, "jcmd"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    filled-new-array {v3, v4, v5, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-interface {v2, v4, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;->execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;

    move-result-object v2

    .line 395
    .local v2, "response":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    :try_start_0
    invoke-static {v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->checkHeader(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-interface {v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 398
    nop

    .line 399
    return-void

    .line 397
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;->close()V

    .line 398
    throw v3
.end method
