.class public Lnet/bytebuddy/jar/asm/signature/SignatureReader;
.super Ljava/lang/Object;
.source "SignatureReader.java"


# instance fields
.field private final signatureValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private static parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I
    .locals 9
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "startOffset"    # I
    .param p2, "signatureVisitor"    # Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 153
    move v0, p1

    .line 154
    .local v0, "offset":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 157
    .local v0, "currentChar":C
    const/16 v2, 0x3b

    sparse-switch v0, :sswitch_data_0

    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 173
    :sswitch_0
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    return v2

    .line 177
    :sswitch_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 178
    .local v2, "endOffset":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v3, v2, 0x1

    return v3

    .line 185
    .end local v2    # "endOffset":I
    :sswitch_2
    move v3, v1

    .line 186
    .local v3, "start":I
    const/4 v4, 0x0

    .line 187
    .local v4, "visited":Z
    const/4 v5, 0x0

    .line 190
    .local v5, "inner":Z
    :goto_0
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "offset":I
    .local v6, "offset":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 191
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_0

    goto :goto_3

    .line 212
    :cond_0
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    .line 216
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 218
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    .line 222
    :goto_1
    const/4 v4, 0x1

    .line 224
    :goto_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v0, v7

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_2

    .line 225
    packed-switch v0, :pswitch_data_0

    .line 240
    :pswitch_0
    const/16 v7, 0x3d

    invoke-virtual {p2, v7}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v6

    .line 241
    goto :goto_2

    .line 234
    :pswitch_1
    add-int/lit8 v7, v6, 0x1

    .line 236
    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v8

    .line 235
    invoke-static {p0, v7, v8}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v6

    .line 237
    goto :goto_2

    .line 228
    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    .line 229
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument()V

    .line 230
    goto :goto_2

    .line 244
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    move v1, v6

    goto :goto_0

    .line 212
    :cond_3
    move v1, v6

    goto :goto_0

    .line 195
    :cond_4
    :goto_3
    if-nez v4, :cond_6

    .line 196
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 198
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_4

    .line 200
    :cond_5
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    .line 205
    .end local v1    # "name":Ljava/lang/String;
    :cond_6
    :goto_4
    if-ne v0, v2, :cond_7

    .line 206
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitEnd()V

    .line 207
    nop

    .line 246
    return v6

    .line 209
    :cond_7
    move v3, v6

    .line 210
    const/4 v4, 0x0

    .line 211
    const/4 v5, 0x1

    move v1, v6

    goto :goto_0

    .line 168
    .end local v3    # "start":I
    .end local v4    # "visited":Z
    .end local v5    # "inner":Z
    .end local v6    # "offset":I
    .local v1, "offset":I
    :sswitch_3
    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitBaseType(C)V

    .line 169
    return v1

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x53 -> :sswitch_3
        0x54 -> :sswitch_1
        0x56 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V
    .locals 7
    .param p1, "signatureVistor"    # Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 64
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    .line 65
    .local v0, "signature":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    .local v1, "length":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_4

    .line 75
    const/4 v2, 0x2

    .line 78
    .local v2, "offset":I
    :goto_0
    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 79
    .local v4, "classBoundStartOffset":I
    add-int/lit8 v5, v2, -0x1

    .line 80
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {p1, v5}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v2, v4, 0x1

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 86
    .local v5, "currentChar":C
    const/16 v6, 0x4c

    if-eq v5, v6, :cond_0

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_0

    const/16 v6, 0x54

    if-ne v5, v6, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    .line 92
    :cond_1
    :goto_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v5, v2

    if-ne v2, v3, :cond_2

    .line 93
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    .end local v6    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 100
    .end local v2    # "offset":I
    .end local v4    # "classBoundStartOffset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v2, 0x3e

    if-ne v5, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_0

    .line 102
    .end local v5    # "currentChar":C
    .end local v6    # "offset":I
    :cond_4
    const/4 v6, 0x0

    .line 108
    .restart local v6    # "offset":I
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_6

    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_5

    .line 111
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v6

    goto :goto_3

    .line 114
    :cond_5
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    .line 115
    .end local v6    # "offset":I
    .restart local v2    # "offset":I
    :goto_4
    if-ge v2, v1, :cond_7

    .line 117
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_4

    .line 122
    .end local v2    # "offset":I
    .restart local v6    # "offset":I
    :cond_6
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    .line 123
    .end local v6    # "offset":I
    .restart local v2    # "offset":I
    :goto_5
    if-ge v2, v1, :cond_7

    .line 124
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_5

    .line 127
    :cond_7
    return-void
.end method

.method public acceptType(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V
    .locals 2
    .param p1, "signatureVisitor"    # Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 140
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    .line 141
    return-void
.end method
