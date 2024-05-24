.class public Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJnaSolarisDoor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Factory;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;,
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;
    }
.end annotation


# instance fields
.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

.field private final socket:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;Ljava/io/File;)V
    .locals 0
    .param p1, "library"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;
    .param p2, "socket"    # Ljava/io/File;

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    .line 1317
    iput-object p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->socket:Ljava/io/File;

    .line 1318
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1375
    return-void
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;
    .locals 12
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "argument"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1325
    const-string v0, "UTF-8"

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->socket:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;->open(Ljava/lang/String;I)I

    move-result v1

    .line 1327
    .local v1, "handle":I
    :try_start_0
    new-instance v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;

    invoke-direct {v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1329
    .local v2, "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1330
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1331
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1332
    array-length v5, p2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6

    .line 1333
    .local v7, "anArgument":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1334
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1336
    :cond_0
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1332
    .end local v7    # "anArgument":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1338
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->dataSize:I

    .line 1339
    new-instance v0, Lcom/sun/jna/Memory;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v0, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1341
    .local v0, "dataPointer":Lcom/sun/jna/Memory;
    const-wide/16 v7, 0x0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/sun/jna/Memory;->write(J[BII)V

    .line 1342
    iput-object v0, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->dataPointer:Lcom/sun/jna/Pointer;

    .line 1343
    new-instance v4, Lcom/sun/jna/Memory;

    const-wide/16 v5, 0x80

    invoke-direct {v4, v5, v6}, Lcom/sun/jna/Memory;-><init>(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1345
    .local v4, "result":Lcom/sun/jna/Memory;
    :try_start_3
    iput-object v4, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->resultPointer:Lcom/sun/jna/Pointer;

    .line 1346
    invoke-virtual {v4}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->resultSize:I

    .line 1347
    iget-object v5, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    invoke-interface {v5, v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;->door_call(ILnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;)I

    move-result v5

    if-nez v5, :cond_4

    .line 1349
    iget v5, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->resultSize:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    iget-object v5, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->resultPointer:Lcom/sun/jna/Pointer;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v5

    if-nez v5, :cond_3

    .line 1351
    iget v5, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->descriptorCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->descriptorPointer:Lcom/sun/jna/Pointer;

    if-eqz v5, :cond_2

    .line 1354
    new-instance v5, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;

    iget-object v6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    iget-object v7, v2, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;->descriptorPointer:Lcom/sun/jna/Pointer;

    const-wide/16 v8, 0x4

    invoke-virtual {v7, v8, v9}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$Response;-><init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1357
    const/4 v4, 0x0

    .line 1360
    const/4 v0, 0x0

    .line 1363
    const/4 v2, 0x0

    .line 1366
    iget-object v6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    invoke-interface {v6, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;->close(I)I

    .line 1354
    return-object v5

    .line 1352
    :cond_2
    :try_start_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Did not receive communication descriptor from target VM"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .end local v1    # "handle":I
    .end local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "result":Lcom/sun/jna/Memory;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v5

    .line 1350
    .restart local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .restart local v1    # "handle":I
    .restart local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .restart local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "result":Lcom/sun/jna/Memory;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Target VM could not execute door call"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .end local v1    # "handle":I
    .end local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "result":Lcom/sun/jna/Memory;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v5

    .line 1348
    .restart local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .restart local v1    # "handle":I
    .restart local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .restart local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "result":Lcom/sun/jna/Memory;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Door call to target VM failed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .end local v1    # "handle":I
    .end local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "result":Lcom/sun/jna/Memory;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1357
    .restart local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .restart local v1    # "handle":I
    .restart local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .restart local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "result":Lcom/sun/jna/Memory;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    const/4 v4, 0x0

    .line 1358
    nop

    .end local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .end local v1    # "handle":I
    .end local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1360
    .end local v4    # "result":Lcom/sun/jna/Memory;
    .restart local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .restart local v1    # "handle":I
    .restart local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .restart local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :catchall_1
    move-exception v4

    const/4 v0, 0x0

    .line 1361
    nop

    .end local v1    # "handle":I
    .end local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1363
    .end local v0    # "dataPointer":Lcom/sun/jna/Memory;
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "handle":I
    .restart local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    .line 1364
    nop

    .end local v1    # "handle":I
    .end local p1    # "protocol":Ljava/lang/String;
    .end local p2    # "argument":[Ljava/lang/String;
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1366
    .end local v2    # "door":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary$DoorArgument;
    .restart local v1    # "handle":I
    .restart local p1    # "protocol":Ljava/lang/String;
    .restart local p2    # "argument":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor;->library:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;

    invoke-interface {v2, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$ForJnaSolarisDoor$SolarisLibrary;->close(I)I

    .line 1367
    throw v0
.end method
