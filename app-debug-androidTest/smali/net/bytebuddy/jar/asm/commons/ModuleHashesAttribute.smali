.class public final Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;
.super Lnet/bytebuddy/jar/asm/Attribute;
.source "ModuleHashesAttribute.java"


# instance fields
.field public algorithm:Ljava/lang/String;

.field public hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 64
    .local p2, "modules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "hashes":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v0, "ModuleHashes"

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->algorithm:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    .line 67
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->hashes:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method protected read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;
    .locals 13
    .param p1, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charBuffer"    # [C
    .param p5, "codeAttributeOffset"    # I
    .param p6, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 86
    move-object v0, p1

    move-object/from16 v1, p4

    move v2, p2

    .line 88
    .local v2, "currentOffset":I
    invoke-virtual {p1, v2, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "hashAlgorithm":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x2

    .line 91
    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 92
    .local v4, "numModules":I
    add-int/lit8 v2, v2, 0x2

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v5, "moduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v6, "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 98
    invoke-virtual {p1, v2, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "module":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x2

    .line 100
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    .line 103
    .local v9, "hashLength":I
    add-int/lit8 v2, v2, 0x2

    .line 104
    new-array v10, v9, [B

    .line 105
    .local v10, "hash":[B
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v9, :cond_0

    .line 106
    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 105
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 109
    .end local v11    # "j":I
    :cond_0
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v8    # "module":Ljava/lang/String;
    .end local v9    # "hashLength":I
    .end local v10    # "hash":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 111
    .end local v7    # "i":I
    :cond_1
    new-instance v7, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;

    invoke-direct {v7, v3, v5, v6}, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method protected write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 8
    .param p1, "classWriter"    # Lnet/bytebuddy/jar/asm/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "codeLength"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .line 121
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 122
    .local v0, "byteVector":Lnet/bytebuddy/jar/asm/ByteVector;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 123
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    .line 126
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 127
    .local v1, "numModules":I
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 129
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->modules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, "module":Ljava/lang/String;
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/commons/ModuleHashesAttribute;->hashes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 131
    .local v5, "hash":[B
    nop

    .line 132
    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/ClassWriter;->newModule(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v6

    array-length v7, v5

    .line 133
    invoke-virtual {v6, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v6

    array-length v7, v5

    .line 134
    invoke-virtual {v6, v5, v2, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 128
    .end local v4    # "module":Ljava/lang/String;
    .end local v5    # "hash":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "numModules":I
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method
