.class Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;
.super Ljava/lang/Object;
.source "AbstractCompositeHashFunction.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/hash/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lorg/checkerframework/com/google/common/hash/Hasher;)Lorg/checkerframework/com/google/common/hash/Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction;

.field final synthetic val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction;[Lorg/checkerframework/com/google/common/hash/Hasher;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction;

    .line 72
    iput-object p1, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash()Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction;->makeHash([Lorg/checkerframework/com/google/common/hash/Hasher;)Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Z)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # Z

    .line 149
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 150
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBoolean(Z)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 149
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putBoolean(Z)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putByte(B)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # B

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putByte(B)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 75
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putByte(B)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 100
    .local v0, "pos":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 101
    .local v4, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    invoke-interface {v4, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 100
    .end local v4    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object p0
.end method

.method public putBytes([B)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "bytes"    # [B

    .line 83
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 84
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes([B)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 83
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-object p0
.end method

.method public putBytes([BII)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 92
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2, p3}, Lorg/checkerframework/com/google/common/hash/Hasher;->putBytes([BII)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 91
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putBytes(Ljava/nio/ByteBuffer;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([B)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([B)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([BII)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putChar(C)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "c"    # C

    .line 157
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putChar(C)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 157
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putChar(C)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putDouble(D)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "d"    # D

    .line 141
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 142
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putDouble(D)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 141
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putDouble(D)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(F)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "f"    # F

    .line 133
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putFloat(F)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 133
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putFloat(F)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "i"    # I

    .line 117
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 118
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putInt(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 117
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putInt(I)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "l"    # J

    .line 125
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 126
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putLong(J)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 125
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putLong(J)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/checkerframework/com/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lorg/checkerframework/com/google/common/hash/Hasher;"
        }
    .end annotation

    .line 181
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lorg/checkerframework/com/google/common/hash/Funnel;, "Lorg/checkerframework/com/google/common/hash/Funnel<-TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 182
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/Funnel;)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 181
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-object p0
.end method

.method public putShort(S)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "s"    # S

    .line 109
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 110
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putShort(S)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 109
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putShort(S)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 173
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 174
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1, p2}, Lorg/checkerframework/com/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 173
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/Hasher;
    .locals 4
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .line 165
    iget-object v0, p0, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lorg/checkerframework/com/google/common/hash/Hasher;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 166
    .local v3, "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    invoke-interface {v3, p1}, Lorg/checkerframework/com/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/Hasher;

    .line 165
    .end local v3    # "hasher":Lorg/checkerframework/com/google/common/hash/Hasher;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/hash/AbstractCompositeHashFunction$1;->putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
