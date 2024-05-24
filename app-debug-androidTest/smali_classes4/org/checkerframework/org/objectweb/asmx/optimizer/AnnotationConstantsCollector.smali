.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;
.super Ljava/lang/Object;
.source "AnnotationConstantsCollector.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;


# instance fields
.field private final av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

.field private final cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V
    .locals 0
    .param p1, "av"    # Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .param p2, "cp"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    .line 52
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    .line 53
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 60
    :cond_0
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    move-object v1, p2

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto/16 :goto_8

    .line 62
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto/16 :goto_8

    .line 64
    :cond_2
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    move-object v1, p2

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto/16 :goto_8

    .line 66
    :cond_3
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    move-object v1, p2

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto/16 :goto_8

    .line 68
    :cond_4
    instance-of v0, p2, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    goto/16 :goto_8

    .line 70
    :cond_5
    instance-of v0, p2, [B

    if-eqz v0, :cond_7

    .line 71
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    .line 72
    .local v0, "v":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 73
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "v":[B
    .end local v1    # "i":I
    :cond_6
    goto/16 :goto_8

    :cond_7
    instance-of v0, p2, [Z

    if-eqz v0, :cond_9

    .line 76
    move-object v0, p2

    check-cast v0, [Z

    check-cast v0, [Z

    .line 77
    .local v0, "v":[Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 78
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-boolean v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "v":[Z
    .end local v1    # "i":I
    :cond_8
    goto/16 :goto_8

    :cond_9
    instance-of v0, p2, [S

    if-eqz v0, :cond_b

    .line 81
    move-object v0, p2

    check-cast v0, [S

    check-cast v0, [S

    .line 82
    .local v0, "v":[S
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 83
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-short v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    .end local v0    # "v":[S
    .end local v1    # "i":I
    :cond_a
    goto/16 :goto_8

    :cond_b
    instance-of v0, p2, [C

    if-eqz v0, :cond_d

    .line 86
    move-object v0, p2

    check-cast v0, [C

    check-cast v0, [C

    .line 87
    .local v0, "v":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_c

    .line 88
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-char v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 90
    .end local v0    # "v":[C
    .end local v1    # "i":I
    :cond_c
    goto/16 :goto_8

    :cond_d
    instance-of v0, p2, [I

    if-eqz v0, :cond_f

    .line 91
    move-object v0, p2

    check-cast v0, [I

    check-cast v0, [I

    .line 92
    .local v0, "v":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_e

    .line 93
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 95
    .end local v0    # "v":[I
    .end local v1    # "i":I
    :cond_e
    goto :goto_8

    :cond_f
    instance-of v0, p2, [J

    if-eqz v0, :cond_11

    .line 96
    move-object v0, p2

    check-cast v0, [J

    check-cast v0, [J

    .line 97
    .local v0, "v":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 98
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-wide v3, v0, v1

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newLong(J)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 100
    .end local v0    # "v":[J
    .end local v1    # "i":I
    :cond_10
    goto :goto_8

    :cond_11
    instance-of v0, p2, [F

    if-eqz v0, :cond_13

    .line 101
    move-object v0, p2

    check-cast v0, [F

    check-cast v0, [F

    .line 102
    .local v0, "v":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 103
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newFloat(F)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 105
    .end local v0    # "v":[F
    .end local v1    # "i":I
    :cond_12
    goto :goto_8

    :cond_13
    instance-of v0, p2, [D

    if-eqz v0, :cond_15

    .line 106
    move-object v0, p2

    check-cast v0, [D

    check-cast v0, [D

    .line 107
    .local v0, "v":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 108
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    aget-wide v3, v0, v1

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newDouble(D)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 110
    .end local v0    # "v":[D
    .end local v1    # "i":I
    :cond_14
    goto :goto_8

    .line 111
    :cond_15
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newConst(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 113
    :goto_8
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 139
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 148
    :cond_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 154
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->cp:Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->newUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 127
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/optimizer/AnnotationConstantsCollector;->av:Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
