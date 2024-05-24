.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;
.super Ljava/lang/Object;
.source "AccessFlags.java"


# instance fields
.field protected access_flags:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "a"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    .line 46
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "set"    # Z

    .line 83
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    .line 84
    if-nez p2, :cond_1

    .line 85
    xor-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    goto :goto_0

    .line 88
    :cond_0
    if-eqz p2, :cond_1

    .line 89
    or-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    .line 92
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAccessFlags()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    return v0
.end method

.method public final getModifiers()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    return v0
.end method

.method public final isAbstract(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 175
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 176
    return-void
.end method

.method public final isAbstract()Z
    .locals 1

    .line 179
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAnnotation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 199
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 200
    return-void
.end method

.method public final isAnnotation()Z
    .locals 1

    .line 203
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnum(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 207
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 208
    return-void
.end method

.method public final isEnum()Z
    .locals 1

    .line 211
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFinal(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 127
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 128
    return-void
.end method

.method public final isFinal()Z
    .locals 1

    .line 131
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInterface(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 167
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 168
    return-void
.end method

.method public final isInterface()Z
    .locals 1

    .line 171
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNative(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 159
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 160
    return-void
.end method

.method public final isNative()Z
    .locals 1

    .line 163
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrivate(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 103
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 104
    return-void
.end method

.method public final isPrivate()Z
    .locals 1

    .line 107
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isProtected(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 111
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 112
    return-void
.end method

.method public final isProtected()Z
    .locals 1

    .line 115
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPublic(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 96
    return-void
.end method

.method public final isPublic()Z
    .locals 2

    .line 99
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isStatic(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 119
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 120
    return-void
.end method

.method public final isStatic()Z
    .locals 1

    .line 123
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStrictfp(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 183
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 184
    return-void
.end method

.method public final isStrictfp()Z
    .locals 1

    .line 187
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSynchronized(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 135
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 136
    return-void
.end method

.method public final isSynchronized()Z
    .locals 1

    .line 139
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSynthetic(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 191
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 192
    return-void
.end method

.method public final isSynthetic()Z
    .locals 1

    .line 195
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTransient(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 151
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 152
    return-void
.end method

.method public final isTransient()Z
    .locals 1

    .line 155
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVarArgs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 215
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 216
    return-void
.end method

.method public final isVarArgs()Z
    .locals 1

    .line 219
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVolatile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 143
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setFlag(IZ)V

    .line 144
    return-void
.end method

.method public final isVolatile()Z
    .locals 1

    .line 147
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAccessFlags(I)V
    .locals 0
    .param p1, "access_flags"    # I

    .line 69
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->access_flags:I

    .line 70
    return-void
.end method

.method public final setModifiers(I)V
    .locals 0
    .param p1, "access_flags"    # I

    .line 79
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->setAccessFlags(I)V

    .line 80
    return-void
.end method
