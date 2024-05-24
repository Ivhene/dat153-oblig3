.class public Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;
.super Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;
.source "SerialVersionUIDAdder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;
    }
.end annotation


# instance fields
.field protected access:I

.field protected computeSVUID:Z

.field protected hasSVUID:Z

.field protected hasStaticInitializer:Z

.field protected interfaces:[Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected svuidConstructors:Ljava/util/Collection;

.field protected svuidFields:Ljava/util/Collection;

.field protected svuidMethods:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    .line 168
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;)V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    .line 172
    return-void
.end method

.method private writeItems(Ljava/util/Collection;Ljava/io/DataOutputStream;Z)V
    .locals 6
    .param p1, "itemCollection"    # Ljava/util/Collection;
    .param p2, "dos"    # Ljava/io/DataOutputStream;
    .param p3, "dotted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 452
    .local v0, "size":I
    new-array v1, v0, [Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;

    check-cast v1, [Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;

    .line 453
    .local v1, "items":[Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 454
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 455
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 456
    aget-object v3, v1, v2

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->access:I

    invoke-virtual {p2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 457
    if-eqz p3, :cond_0

    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    .line 458
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;->desc:Ljava/lang/String;

    .line 457
    :goto_1
    invoke-virtual {p2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected computeSHAdigest([B)[B
    .locals 2
    .param p1, "value"    # [B

    .line 432
    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected computeSVUID()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->hasSVUID:Z

    if-eqz v0, :cond_0

    .line 315
    const-wide/16 v0, 0x0

    return-wide v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 319
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 320
    .local v1, "dos":Ljava/io/DataOutputStream;
    const-wide/16 v2, 0x0

    .line 323
    .local v2, "svuid":J
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v4

    .line 324
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v4

    .line 329
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 334
    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->access:I

    and-int/lit16 v4, v4, 0x611

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 342
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 343
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 344
    aget-object v7, v7, v4

    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 343
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v5}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutputStream;Z)V

    .line 367
    iget-boolean v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->hasStaticInitializer:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    .line 368
    const-string v4, "<clinit>"

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 370
    const-string v4, "()V"

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 379
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v1, v6}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutputStream;Z)V

    .line 387
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    invoke-direct {p0, v4, v1, v6}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->writeItems(Ljava/util/Collection;Ljava/io/DataOutputStream;Z)V

    .line 389
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 396
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->computeSHAdigest([B)[B

    move-result-object v4

    .line 411
    .local v4, "hashBytes":[B
    array-length v7, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_3

    .line 412
    shl-long v8, v2, v5

    aget-byte v6, v4, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v6, v6, 0xff

    int-to-long v10, v6

    or-long v2, v8, v10

    .line 411
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 416
    .end local v4    # "hashBytes":[B
    .end local v7    # "i":I
    :cond_3
    nop

    .line 417
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 421
    return-wide v2

    .line 416
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 417
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 419
    :cond_4
    throw v4
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 190
    and-int/lit16 v0, p2, 0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->computeSVUID:Z

    .line 192
    if-eqz v0, :cond_1

    .line 193
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    .line 194
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->access:I

    .line 195
    iput-object p6, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->interfaces:[Ljava/lang/String;

    .line 198
    :cond_1
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public visitEnd()V
    .locals 9

    .line 285
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->hasSVUID:Z

    if-nez v0, :cond_0

    .line 287
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    const/16 v2, 0x18

    const-string v3, "serialVersionUID"

    const-string v4, "J"

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Long;

    .line 291
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->computeSVUID()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 287
    invoke-interface/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while computing SVUID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 298
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitEnd()V

    .line 299
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 3
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 253
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "serialVersionUID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->computeSVUID:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->hasSVUID:Z

    .line 265
    :cond_0
    and-int/lit16 v0, p1, 0xdf

    .line 270
    .local v0, "mods":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    and-int/lit16 v1, p1, 0x88

    if-nez v1, :cond_2

    .line 273
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidFields:Ljava/util/Collection;

    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v0    # "mods":I
    :cond_2
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/org/objectweb/asmx/ClassAdapter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 212
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->computeSVUID:Z

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "<clinit>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->hasStaticInitializer:Z

    .line 223
    :cond_0
    and-int/lit16 v1, p1, 0xd3f

    .line 230
    .local v1, "mods":I
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_2

    .line 231
    const-string v2, "<init>"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidConstructors:Ljava/util/Collection;

    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v1, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->svuidMethods:Ljava/util/Collection;

    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;

    invoke-direct {v2, p2, v1, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v1    # "mods":I
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/commons/SerialVersionUIDAdder;->cv:Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v0

    return-object v0
.end method
