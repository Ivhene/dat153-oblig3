.class public final enum Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;
.super Ljava/lang/Enum;
.source "ByteBuddyAgent.java"

# interfaces
.implements Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForByteBuddyAgent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;",
        ">;",
        "Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

.field private static final AGENT_FILE_NAME:Ljava/lang/String; = "byteBuddyAgent"

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1391
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    .line 1386
    filled-new-array {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static createJarFile()Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    const-class v0, Lnet/bytebuddy/agent/Installer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1463
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 1467
    :try_start_0
    const-string v1, "byteBuddyAgent"

    const-string v5, ".jar"

    invoke-static {v1, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1468
    .local v1, "agentJar":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 1469
    new-instance v5, Ljava/util/jar/Manifest;

    invoke-direct {v5}, Ljava/util/jar/Manifest;-><init>()V

    .line 1470
    .local v5, "manifest":Ljava/util/jar/Manifest;
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    sget-object v7, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v8, "1.0"

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Agent-Class"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    const-class v8, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Can-Redefine-Classes"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Can-Retransform-Classes"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    new-instance v7, Ljava/util/jar/Attributes$Name;

    const-string v8, "Can-Set-Native-Method-Prefix"

    invoke-direct {v7, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    new-instance v6, Ljava/util/jar/JarOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, v5}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1477
    .local v6, "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :try_start_1
    new-instance v7, Ljava/util/jar/JarEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-class v9, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1478
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 1480
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 1481
    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3, v4}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_0

    .line 1483
    :cond_0
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1485
    .end local v2    # "buffer":[B
    .end local v4    # "index":I
    :try_start_2
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1486
    nop

    .line 1487
    nop

    .line 1489
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1487
    return-object v1

    .line 1485
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V

    .line 1486
    nop

    .end local v0    # "inputStream":Ljava/io/InputStream;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1489
    .end local v1    # "agentJar":Ljava/io/File;
    .end local v5    # "manifest":Ljava/util/jar/Manifest;
    .end local v6    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1490
    throw v1

    .line 1464
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot locate class file for Byte Buddy installer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static trySelfResolve()Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1407
    const-class v0, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    .line 1408
    .local v0, "protectionDomain":Ljava/security/ProtectionDomain;
    const-string v1, "net.bytebuddy.agent.latent"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 1411
    :cond_0
    if-nez v0, :cond_1

    .line 1412
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 1414
    :cond_1
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v1

    .line 1415
    .local v1, "codeSource":Ljava/security/CodeSource;
    if-nez v1, :cond_2

    .line 1416
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v2

    return-object v2

    .line 1418
    :cond_2
    invoke-virtual {v1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v2

    .line 1419
    .local v2, "location":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1420
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v3

    return-object v3

    .line 1424
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    .local v3, "agentJar":Ljava/io/File;
    goto :goto_0

    .line 1425
    .end local v3    # "agentJar":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 1426
    .local v3, "ignored":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 1428
    .local v3, "agentJar":Ljava/io/File;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 1432
    :cond_4
    new-instance v4, Ljava/util/jar/JarInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1434
    .local v4, "jarInputStream":Ljava/util/jar/JarInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v5

    .line 1435
    .local v5, "manifest":Ljava/util/jar/Manifest;
    if-nez v5, :cond_5

    .line 1436
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1451
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V

    .line 1436
    return-object v6

    .line 1438
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    .line 1439
    .local v6, "attributes":Ljava/util/jar/Attributes;
    if-nez v6, :cond_6

    .line 1440
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1451
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V

    .line 1440
    return-object v7

    .line 1442
    :cond_6
    :try_start_3
    const-class v7, Lnet/bytebuddy/agent/Installer;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Agent-Class"

    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Can-Redefine-Classes"

    .line 1443
    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Can-Retransform-Classes"

    .line 1444
    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Can-Set-Native-Method-Prefix"

    .line 1445
    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_7

    .line 1446
    nop

    .line 1451
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V

    .line 1446
    return-object v3

    .line 1448
    :cond_7
    :try_start_4
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1451
    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V

    .line 1448
    return-object v7

    .line 1451
    .end local v5    # "manifest":Ljava/util/jar/Manifest;
    .end local v6    # "attributes":Ljava/util/jar/Attributes;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/jar/JarInputStream;->close()V

    .line 1452
    throw v5

    .line 1429
    .end local v4    # "jarInputStream":Ljava/util/jar/JarInputStream;
    :cond_8
    :goto_1
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->access$200()Ljava/io/File;

    move-result-object v4

    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1386
    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;
    .locals 1

    .line 1386
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->$VALUES:[Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    return-object v0
.end method


# virtual methods
.method public resolve()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->trySelfResolve()Ljava/io/File;

    move-result-object v0

    .line 1499
    .local v0, "agentJar":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1500
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->createJarFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1499
    :goto_0
    return-object v1

    .line 1502
    .end local v0    # "agentJar":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "ignored":Ljava/lang/Exception;
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->createJarFile()Ljava/io/File;

    move-result-object v1

    return-object v1
.end method
