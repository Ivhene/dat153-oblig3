.class public Lorg/checkerframework/checker/signedness/SignednessVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "SignednessVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 33
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 34
    return-void
.end method

.method private castIgnoresMSB(Ljavax/lang/model/type/TypeKind;Ljavax/lang/model/type/TypeKind;Lcom/sun/source/tree/LiteralTree;)Z
    .locals 10
    .param p1, "shiftTypeKind"    # Ljavax/lang/model/type/TypeKind;
    .param p2, "castTypeKind"    # Ljavax/lang/model/type/TypeKind;
    .param p3, "shiftAmountLit"    # Lcom/sun/source/tree/LiteralTree;

    .line 154
    sget-object v0, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Invalid shift type"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    const-wide/16 v0, 0x40

    .line 163
    .local v0, "shiftBits":J
    invoke-interface {p3}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    .line 164
    .local v2, "shiftAmount":J
    goto :goto_0

    .line 156
    .end local v0    # "shiftBits":J
    .end local v2    # "shiftAmount":J
    :pswitch_1
    const-wide/16 v0, 0x20

    .line 158
    .restart local v0    # "shiftBits":J
    invoke-interface {p3}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v4, 0x1f

    and-long/2addr v2, v4

    .line 159
    .restart local v2    # "shiftAmount":J
    nop

    .line 171
    :goto_0
    sget-object v4, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 188
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    const-string v5, "Invalid cast target"

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :pswitch_2
    const-wide/16 v4, 0x10

    .line 180
    .local v4, "castBits":J
    goto :goto_1

    .line 176
    .end local v4    # "castBits":J
    :pswitch_3
    const-wide/16 v4, 0x8

    .line 177
    .restart local v4    # "castBits":J
    goto :goto_1

    .line 173
    .end local v4    # "castBits":J
    :pswitch_4
    const-wide/16 v4, 0x8

    .line 174
    .restart local v4    # "castBits":J
    goto :goto_1

    .line 185
    .end local v4    # "castBits":J
    :pswitch_5
    const-wide/16 v4, 0x40

    .line 186
    .restart local v4    # "castBits":J
    goto :goto_1

    .line 182
    .end local v4    # "castBits":J
    :pswitch_6
    const-wide/16 v4, 0x20

    .line 183
    .restart local v4    # "castBits":J
    nop

    .line 191
    :goto_1
    sub-long v6, v0, v4

    .line 193
    .local v6, "bitsDiscarded":J
    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v8, 0x1

    :goto_3
    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getLong(Ljava/lang/Object;)J
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private hasSignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 297
    const-class v0, Lorg/checkerframework/checker/signedness/qual/Signed;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/checkerframework/checker/signedness/qual/PolySigned;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 287
    const-class v0, Lorg/checkerframework/checker/signedness/qual/Unsigned;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/checkerframework/checker/signedness/qual/PolySigned;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isCastedShiftEitherSignedness(Lcom/sun/source/tree/BinaryTree;)Z
    .locals 7
    .param p1, "shiftExpr"    # Lcom/sun/source/tree/BinaryTree;

    .line 258
    iget-object v0, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingNonParen(Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sun/source/tree/Tree;

    .line 260
    .local v0, "enclosing":Lcom/sun/source/tree/Tree;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->primitiveTypeCast(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/PrimitiveTypeTree;

    move-result-object v1

    .line 261
    .local v1, "castPrimitiveType":Lcom/sun/source/tree/PrimitiveTypeTree;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 262
    return v2

    .line 264
    :cond_0
    invoke-interface {v1}, Lcom/sun/source/tree/PrimitiveTypeTree;->getPrimitiveTypeKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    .line 267
    .local v3, "castTypeKind":Ljavax/lang/model/type/TypeKind;
    iget-object v4, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    .line 268
    invoke-virtual {v4, p1}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    .line 271
    .local v4, "shiftTypeKind":Ljavax/lang/model/type/TypeKind;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 272
    .local v5, "shiftAmountExpr":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isLiteral(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 273
    return v2

    .line 275
    :cond_1
    move-object v2, v5

    check-cast v2, Lcom/sun/source/tree/LiteralTree;

    .line 277
    .local v2, "shiftLit":Lcom/sun/source/tree/LiteralTree;
    invoke-direct {p0, v4, v3, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->castIgnoresMSB(Ljavax/lang/model/type/TypeKind;Ljavax/lang/model/type/TypeKind;Lcom/sun/source/tree/LiteralTree;)Z

    move-result v6

    return v6
.end method

.method private isLiteral(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 1
    .param p1, "expr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 71
    instance-of v0, p1, Lcom/sun/source/tree/LiteralTree;

    return v0
.end method

.method private isMask(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 38
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 40
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isMaskedShiftEitherSignedness(Lcom/sun/source/tree/BinaryTree;)Z
    .locals 9
    .param p1, "shiftExpr"    # Lcom/sun/source/tree/BinaryTree;

    .line 212
    iget-object v0, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingNonParen(Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 214
    .local v0, "enclosingPair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;>;"
    iget-object v1, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 216
    .local v1, "enclosing":Lcom/sun/source/tree/Tree;
    iget-object v2, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sun/source/tree/Tree;

    .line 218
    .local v2, "enclosingChild":Lcom/sun/source/tree/Tree;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isMask(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 219
    return v4

    .line 222
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sun/source/tree/BinaryTree;

    .line 223
    .local v3, "maskExpr":Lcom/sun/source/tree/BinaryTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 227
    .local v5, "shiftAmountExpr":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v3}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    if-ne v6, v2, :cond_1

    .line 228
    invoke-interface {v3}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v3}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    :goto_0
    nop

    .line 232
    .local v6, "mask":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 234
    invoke-direct {p0, v5}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isLiteral(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v6}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isLiteral(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    move-object v4, v5

    check-cast v4, Lcom/sun/source/tree/LiteralTree;

    .line 239
    .local v4, "shiftLit":Lcom/sun/source/tree/LiteralTree;
    move-object v7, v6

    check-cast v7, Lcom/sun/source/tree/LiteralTree;

    .line 241
    .local v7, "maskLit":Lcom/sun/source/tree/LiteralTree;
    invoke-interface {v3}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v8

    invoke-direct {p0, v8, v4, v7}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->maskIgnoresMSB(Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/LiteralTree;Lcom/sun/source/tree/LiteralTree;)Z

    move-result v8

    return v8

    .line 235
    .end local v4    # "shiftLit":Lcom/sun/source/tree/LiteralTree;
    .end local v7    # "maskLit":Lcom/sun/source/tree/LiteralTree;
    :cond_3
    :goto_1
    return v4
.end method

.method private kindWithoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Ljava/lang/String;
    .locals 3
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 391
    invoke-virtual {p1}, Lcom/sun/source/tree/Tree$Kind;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "result":Ljava/lang/String;
    const-string v1, "_ASSIGNMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 395
    :cond_0
    return-object v0
.end method

.method private maskIgnoresMSB(Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/LiteralTree;Lcom/sun/source/tree/LiteralTree;)Z
    .locals 10
    .param p1, "maskKind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "shiftAmountLit"    # Lcom/sun/source/tree/LiteralTree;
    .param p3, "maskLit"    # Lcom/sun/source/tree/LiteralTree;

    .line 99
    invoke-interface {p2}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    .line 100
    .local v0, "shiftAmount":J
    invoke-interface {p3}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 103
    .local v2, "mask":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 104
    return v7

    .line 109
    :cond_0
    invoke-interface {p3}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->LONG_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-eq v6, v8, :cond_1

    .line 110
    const/16 v6, 0x20

    shl-long/2addr v2, v6

    .line 112
    :cond_1
    const-wide/16 v8, 0x40

    sub-long/2addr v8, v0

    long-to-int v6, v8

    ushr-long/2addr v2, v6

    .line 114
    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->AND:Lcom/sun/source/tree/Tree$Kind;

    const/4 v8, 0x0

    if-ne p1, v6, :cond_3

    .line 116
    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v7, v8

    :goto_0
    return v7

    .line 117
    :cond_3
    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->OR:Lcom/sun/source/tree/Tree$Kind;

    if-ne p1, v4, :cond_5

    .line 119
    long-to-int v4, v0

    shl-int v4, v7, v4

    sub-int/2addr v4, v7

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    return v7

    .line 121
    :cond_5
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    const-string v5, "Invalid Masking Operation"

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private primitiveTypeCast(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/PrimitiveTypeTree;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 48
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->TYPE_CAST:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 49
    return-object v2

    .line 52
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/TypeCastTree;

    .line 53
    .local v0, "cast":Lcom/sun/source/tree/TypeCastTree;
    invoke-interface {v0}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 56
    .local v1, "castType":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v3, v4, :cond_1

    .line 57
    return-object v2

    .line 59
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 60
    .local v3, "annotatedType":Lcom/sun/source/tree/AnnotatedTypeTree;
    invoke-interface {v3}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 62
    .local v4, "underlyingType":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v4}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v5, v6, :cond_2

    .line 63
    return-object v2

    .line 66
    :cond_2
    move-object v2, v4

    check-cast v2, Lcom/sun/source/tree/PrimitiveTypeTree;

    return-object v2
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 318
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 319
    .local v0, "leftOp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 320
    .local v1, "rightOp":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 321
    .local v2, "leftOpType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 323
    .local v3, "rightOpType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    .line 325
    .local v4, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 377
    const-class v5, Lorg/checkerframework/checker/signedness/qual/Unsigned;

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-class v5, Lorg/checkerframework/checker/signedness/qual/Signed;

    .line 378
    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 379
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "operation.mixed.unsignedlhs"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 367
    :pswitch_0
    const-class v5, Lorg/checkerframework/checker/signedness/qual/Unsigned;

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Lorg/checkerframework/checker/signedness/qual/Signed;

    .line 368
    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "comparison.mixed.unsignedlhs"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 370
    :cond_0
    const-class v5, Lorg/checkerframework/checker/signedness/qual/Signed;

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-class v5, Lorg/checkerframework/checker/signedness/qual/Unsigned;

    .line 371
    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 372
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "comparison.mixed.unsignedrhs"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 358
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 359
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "comparison.unsignedlhs"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 360
    :cond_1
    invoke-direct {p0, v3}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 361
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "comparison.unsignedrhs"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 352
    :pswitch_2
    goto/16 :goto_0

    .line 344
    :pswitch_3
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasSignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 345
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isMaskedShiftEitherSignedness(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 346
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isCastedShiftEitherSignedness(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 347
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "shift.unsigned"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :pswitch_4
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 337
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isMaskedShiftEitherSignedness(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 338
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->isCastedShiftEitherSignedness(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 339
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "shift.signed"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :pswitch_5
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 329
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "operation.unsignedlhs"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_2
    invoke-direct {p0, v3}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 331
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "operation.unsignedrhs"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_3
    const-class v5, Lorg/checkerframework/checker/signedness/qual/Signed;

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-class v5, Lorg/checkerframework/checker/signedness/qual/Unsigned;

    .line 381
    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 382
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "operation.mixed.unsignedrhs"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 386
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Void;

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 415
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 416
    .local v0, "var":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 417
    .local v1, "expr":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 418
    .local v2, "varType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 420
    .local v3, "exprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    .line 422
    .local v4, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v5, Lorg/checkerframework/checker/signedness/SignednessVisitor$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 466
    const-class v5, Lorg/checkerframework/checker/signedness/qual/Unsigned;

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Lorg/checkerframework/checker/signedness/qual/Signed;

    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 470
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->kindWithoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 468
    const-string v7, "compound.assignment.mixed.unsigned.variable"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 467
    invoke-virtual {v5, v6, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 463
    :pswitch_0
    goto/16 :goto_0

    .line 452
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasSignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 453
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 456
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->kindWithoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "signed"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 454
    const-string v7, "compound.assignment.shift.unsigned"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 453
    invoke-virtual {v5, v6, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 441
    :pswitch_2
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 445
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->kindWithoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "unsigned"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 443
    const-string v7, "compound.assignment.shift.signed"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 442
    invoke-virtual {v5, v6, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    :pswitch_3
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 426
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 429
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->kindWithoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 427
    const-string v7, "compound.assignment.unsigned.variable"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 426
    invoke-virtual {v5, v6, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-direct {p0, v3}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->hasUnsignedAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 432
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 435
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->kindWithoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 433
    const-string v7, "compound.assignment.unsigned.expression"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 432
    invoke-virtual {v5, v6, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    :cond_1
    const-class v5, Lorg/checkerframework/checker/signedness/qual/Signed;

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-class v5, Lorg/checkerframework/checker/signedness/qual/Unsigned;

    .line 473
    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 474
    iget-object v5, p0, Lorg/checkerframework/checker/signedness/SignednessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 477
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/signedness/SignednessVisitor;->kindWithoutAssignment(Lcom/sun/source/tree/Tree$Kind;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 475
    const-string v7, "compound.assignment.mixed.unsigned.expression"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 474
    invoke-virtual {v5, v6, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 482
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
