.class public Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;
.super Ljava/lang/Object;
.source "SignatureReader.java"


# instance fields
.field private final signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->signature:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private static parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I
    .locals 8
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "v"    # Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    .line 154
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "pos":I
    .local v0, "pos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v1, p1

    .local v1, "c":C
    const/16 v2, 0x3b

    sparse-switch p1, :sswitch_data_0

    .line 176
    move p1, v0

    .line 177
    .local p1, "start":I
    const/4 v3, 0x0

    .line 178
    .local v3, "visited":Z
    const/4 v4, 0x0

    .local v4, "inner":Z
    goto :goto_0

    .line 168
    .end local v3    # "visited":Z
    .end local v4    # "inner":Z
    .end local p1    # "start":I
    :sswitch_0
    invoke-interface {p2}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitArrayType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result p1

    return p1

    .line 171
    :sswitch_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 172
    .local p1, "end":I
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 164
    .end local p1    # "end":I
    :sswitch_2
    invoke-interface {p2, v1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitBaseType(C)V

    .line 165
    return v0

    .line 180
    .restart local v3    # "visited":Z
    .restart local v4    # "inner":Z
    .local p1, "start":I
    :goto_0
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    sparse-switch v0, :sswitch_data_1

    move v0, v5

    goto :goto_4

    .line 201
    :sswitch_3
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 203
    invoke-interface {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_0
    invoke-interface {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    .line 207
    :goto_1
    const/4 v6, 0x1

    .line 209
    .end local v3    # "visited":Z
    .local v6, "visited":Z
    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    sparse-switch v3, :sswitch_data_2

    .line 223
    nop

    .line 225
    const/16 v3, 0x3d

    invoke-interface {p2, v3}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v3

    .line 223
    invoke-static {p0, v5, v3}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v5

    .line 226
    goto :goto_2

    .line 211
    :sswitch_4
    move v0, v5

    move v3, v6

    goto :goto_4

    .line 218
    :sswitch_5
    add-int/lit8 v3, v5, 0x1

    .line 220
    invoke-interface {p2, v1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v7

    .line 218
    invoke-static {p0, v3, v7}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v5

    .line 221
    goto :goto_2

    .line 213
    :sswitch_6
    add-int/lit8 v5, v5, 0x1

    .line 214
    invoke-interface {p2}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitTypeArgument()V

    .line 215
    goto :goto_2

    .line 183
    .end local v0    # "name":Ljava/lang/String;
    .end local v6    # "visited":Z
    .restart local v3    # "visited":Z
    :sswitch_7
    if-nez v3, :cond_2

    .line 184
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 186
    invoke-interface {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_3

    .line 188
    :cond_1
    invoke-interface {p2, v0}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    .line 191
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    :goto_3
    if-ne v1, v2, :cond_3

    .line 192
    invoke-interface {p2}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitEnd()V

    .line 193
    return v5

    .line 195
    :cond_3
    move p1, v5

    .line 196
    const/4 v0, 0x0

    .line 197
    .end local v3    # "visited":Z
    .local v0, "visited":Z
    const/4 v3, 0x1

    .line 198
    .end local v4    # "inner":Z
    .local v3, "inner":Z
    move v4, v3

    move v3, v0

    move v0, v5

    .line 226
    .end local v5    # "pos":I
    .local v0, "pos":I
    .local v3, "visited":Z
    .restart local v4    # "inner":Z
    :goto_4
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x46 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_7
        0x3b -> :sswitch_7
        0x3c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2a -> :sswitch_6
        0x2b -> :sswitch_5
        0x2d -> :sswitch_5
        0x3e -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)V
    .locals 7
    .param p1, "v"    # Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    .line 72
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->signature:Ljava/lang/String;

    .line 73
    .local v0, "signature":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 77
    .local v1, "len":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_4

    .line 78
    const/4 v2, 0x2

    .line 80
    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 81
    .local v4, "end":I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    .line 82
    add-int/lit8 v2, v4, 0x1

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 85
    .local v5, "c":C
    const/16 v6, 0x4c

    if-eq v5, v6, :cond_0

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_0

    const/16 v6, 0x54

    if-ne v5, v6, :cond_1

    .line 86
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitClassBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v2

    .line 90
    :cond_1
    :goto_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .local v6, "pos":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v5, v2

    if-ne v2, v3, :cond_2

    .line 91
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitInterfaceBound()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v2

    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_1

    .line 96
    .end local v2    # "pos":I
    .end local v4    # "end":I
    .restart local v6    # "pos":I
    :cond_2
    const/16 v2, 0x3e

    if-ne v5, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_0

    .line 98
    .end local v5    # "c":C
    .end local v6    # "pos":I
    :cond_4
    const/4 v6, 0x0

    .line 101
    .restart local v6    # "pos":I
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_6

    .line 102
    add-int/lit8 v6, v6, 0x1

    .line 103
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_5

    .line 104
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitParameterType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v6

    goto :goto_3

    .line 106
    :cond_5
    add-int/lit8 v2, v6, 0x1

    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitReturnType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v2

    .line 107
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :goto_4
    if-ge v2, v1, :cond_7

    .line 108
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitExceptionType()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_4

    .line 111
    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    :cond_6
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitSuperclass()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v2

    .line 112
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :goto_5
    if-ge v2, v1, :cond_7

    .line 113
    invoke-interface {p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;->visitInterface()Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_5

    .line 116
    :cond_7
    return-void
.end method

.method public acceptType(Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)V
    .locals 2
    .param p1, "v"    # Lorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;

    .line 133
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/checkerframework/org/objectweb/asmx/signature/SignatureVisitor;)I

    .line 134
    return-void
.end method
