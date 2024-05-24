.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;
.super Ljava/util/HashMap;
.source "ConstantPool.java"


# instance fields
.field private key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

.field private key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

.field private key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 43
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 45
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 47
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    return-void
.end method

.method private get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 1
    .param p1, "key"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 192
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    const/16 v1, 0x53

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 102
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 104
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 105
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 107
    :cond_0
    return-object v0
.end method

.method private put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V
    .locals 0
    .param p1, "cst"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 196
    invoke-virtual {p0, p1, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method


# virtual methods
.method public newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    const/16 v1, 0x43

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 113
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 115
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 116
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 118
    :cond_0
    return-object v0
.end method

.method public newConst(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "cst"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 123
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    .local v0, "val":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "val":I
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 126
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 127
    .local v0, "val":F
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newFloat(F)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v1

    return-object v1

    .line 128
    .end local v0    # "val":F
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 130
    .local v0, "val":J
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newLong(J)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v2

    return-object v2

    .line 131
    .end local v0    # "val":J
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 132
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 133
    .local v0, "val":D
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newDouble(D)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v2

    return-object v2

    .line 134
    .end local v0    # "val":D
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 135
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newString(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    return-object v0

    .line 136
    :cond_4
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_6

    .line 137
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 138
    .local v0, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 139
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 138
    :goto_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v1

    return-object v1

    .line 142
    .end local v0    # "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDouble(D)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "value"    # D

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(D)V

    .line 81
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 82
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 83
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 84
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 86
    :cond_0
    return-object v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 153
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 155
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 156
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 157
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 159
    :cond_0
    return-object v0
.end method

.method public newFloat(F)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "value"    # F

    .line 60
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(F)V

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 62
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 63
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 64
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 66
    :cond_0
    return-object v0
.end method

.method public newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "value"    # I

    .line 50
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(I)V

    .line 51
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 52
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 54
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 56
    :cond_0
    return-object v0
.end method

.method public newLong(J)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "value"    # J

    .line 70
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(J)V

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 72
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 74
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 76
    :cond_0
    return-object v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    if-eqz p4, :cond_0

    const/16 v1, 0x4e

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d

    :goto_0
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 170
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newClass(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 172
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 173
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key3:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 174
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 176
    :cond_1
    return-object v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    const/16 v1, 0x54

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 182
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 184
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 185
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key2:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 186
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 188
    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    const/16 v1, 0x73

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->set(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->get(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    move-result-object v0

    .line 92
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    if-nez v0, :cond_0

    .line 93
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->key1:Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;-><init>(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    move-object v0, v1

    .line 94
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->put(Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;)V

    .line 96
    :cond_0
    return-object v0
.end method
