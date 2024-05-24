.class public Lorg/checkerframework/common/value/ValueVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "ValueVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 35
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/common/value/ValueVisitor;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueVisitor;

    .line 32
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    return-object v0
.end method

.method private replaceSpecialIntRangeAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 112
    new-instance v0, Lorg/checkerframework/common/value/ValueVisitor$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/common/value/ValueVisitor$1;-><init>(Lorg/checkerframework/common/value/ValueVisitor;)V

    .line 134
    .local v0, "replaceSpecialIntRangeAnnotations":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method protected checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 1
    .param p1, "overriderTree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "overrider"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "overridingType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p4, "overridden"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p5, "overriddenType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 97
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueVisitor;->replaceSpecialIntRangeAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 98
    invoke-direct {p0, p4}, Lorg/checkerframework/common/value/ValueVisitor;->replaceSpecialIntRangeAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 100
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkOverride(Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v0

    return v0
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 0
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueVisitor;->replaceSpecialIntRangeAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 2
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueVisitor;->replaceSpecialIntRangeAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 72
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/checkerframework/common/value/ValueVisitor;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Lorg/checkerframework/common/value/ValueVisitor;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    sget-object v1, Lorg/checkerframework/common/value/util/Range;->CHAR_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 74
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected createTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .locals 2

    .line 139
    new-instance v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected bridge synthetic createTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/checkerframework/common/value/ValueVisitor;->createTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public validateType(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 10
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 288
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->validateType(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    .line 289
    .local v0, "result":Z
    if-nez v0, :cond_3

    .line 290
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 291
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    const-string v2, "org.checkerframework.common.value.qual.IntRange"

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "from.greater.than.to"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v2, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getFromValueFromIntRange(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)J

    move-result-wide v5

    .line 293
    .local v5, "from":J
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v2, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getToValueFromIntRange(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)J

    move-result-wide v7

    .line 294
    .local v7, "to":J
    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    .line 295
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v3, v9}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 296
    return v4

    .line 294
    .end local v5    # "from":J
    .end local v7    # "to":J
    :cond_0
    goto :goto_0

    .line 298
    :cond_1
    const-string v2, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    const-string v2, "from"

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    invoke-static {v1, v2, v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, "from":I
    const-string v5, "to"

    const-class v7, Ljava/lang/Integer;

    invoke-static {v1, v5, v7, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 302
    .local v5, "to":I
    if-le v2, v5, :cond_3

    .line 303
    iget-object v6, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v6, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 304
    return v4

    .line 298
    .end local v2    # "from":I
    .end local v5    # "to":I
    :cond_2
    :goto_0
    nop

    .line 308
    .end local v1    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    return v0
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "node"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 151
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    return-object v1

    .line 158
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationFromAnnotationTree(Lcom/sun/source/tree/AnnotationTree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 159
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "org.checkerframework.common.value.qual.ArrayLen"

    const-string v6, "org.checkerframework.common.value.qual.IntVal"

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "org.checkerframework.common.value.qual.IntRange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto :goto_1

    :sswitch_1
    const-string v3, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v3, "org.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "org.checkerframework.common.value.qual.BoolVal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_4
    const-string v3, "org.checkerframework.common.value.qual.DoubleVal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :sswitch_6
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "negative.arraylen"

    const-string v9, "from.greater.than.to"

    const-string v10, "to"

    const-string v11, "from"

    const/4 v12, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 206
    :pswitch_0
    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v11, v2, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 207
    .local v2, "from":I
    const-class v4, Ljava/lang/Integer;

    invoke-static {v1, v10, v4, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 208
    .local v4, "to":I
    if-le v2, v4, :cond_2

    .line 209
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v9, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 210
    return-object v12

    .line 211
    :cond_2
    if-gez v2, :cond_8

    .line 212
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v5, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 213
    return-object v12

    .line 179
    .end local v2    # "from":I
    .end local v4    # "to":I
    :pswitch_1
    const-string v2, "value"

    const-class v4, Ljava/lang/Object;

    invoke-static {v1, v2, v4, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "no.values.given"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 183
    return-object v12

    .line 184
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v7, 0xa

    if-le v4, v7, :cond_5

    .line 185
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 187
    invoke-static {v1, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    const-string v4, "too.many.values.given.int"

    goto :goto_2

    .line 190
    :cond_4
    const-string v4, "too.many.values.given"

    :goto_2
    nop

    .line 191
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 186
    invoke-static {v4, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 185
    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 193
    return-object v12

    .line 194
    :cond_5
    invoke-static {v1, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 196
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v4

    .line 197
    .local v4, "arrayLens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_6

    .line 198
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 199
    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 198
    invoke-virtual {v5, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 201
    return-object v12

    .line 203
    .end local v4    # "arrayLens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    goto :goto_3

    .line 165
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 166
    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v11, v2, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 167
    .local v2, "from":J
    const-class v4, Ljava/lang/Long;

    invoke-static {v1, v10, v4, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 168
    .local v4, "to":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    .line 169
    iget-object v6, p0, Lorg/checkerframework/common/value/ValueVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 170
    return-object v12

    .line 172
    .end local v2    # "from":J
    .end local v4    # "to":J
    :cond_7
    nop

    .line 220
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x1b4e6e14 -> :sswitch_6
        0x10601bb6 -> :sswitch_5
        0x20889e16 -> :sswitch_4
        0x40ad45dd -> :sswitch_3
        0x454d51d6 -> :sswitch_2
        0x79bc0f27 -> :sswitch_1
        0x7e5c7d48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 225
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 230
    .local v0, "castType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 231
    .local v1, "castAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 233
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 234
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 240
    .local v2, "exprAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    iget-object v3, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 242
    invoke-virtual {v3, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/checkerframework/common/value/ValueVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 243
    invoke-virtual {v3, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 244
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 245
    .local v3, "castRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    .line 246
    .local v4, "castTypeKind":Ljavax/lang/model/type/TypeKind;
    sget-object v5, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lorg/checkerframework/common/value/util/Range;->isByteEverything()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    return-object p2

    .line 249
    :cond_1
    sget-object v5, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lorg/checkerframework/common/value/util/Range;->isCharEverything()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    return-object p2

    .line 252
    :cond_2
    sget-object v5, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lorg/checkerframework/common/value/util/Range;->isShortEverything()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    return-object p2

    .line 255
    :cond_3
    sget-object v5, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lorg/checkerframework/common/value/util/Range;->isIntEverything()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 256
    return-object p2

    .line 258
    :cond_4
    sget-object v5, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lorg/checkerframework/common/value/util/Range;->isLongEverything()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 259
    return-object p2

    .line 261
    :cond_5
    sget-boolean v5, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    if-eqz v5, :cond_8

    .line 265
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 266
    .local v5, "exprRange":Lorg/checkerframework/common/value/util/Range;
    sget-object v6, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v6, :cond_6

    sget-object v6, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v6, :cond_6

    sget-object v6, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v6, :cond_6

    sget-object v6, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v6, :cond_7

    .line 270
    :cond_6
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/checkerframework/common/value/util/NumberUtils;->castRange(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 272
    :cond_7
    invoke-virtual {v3, v5}, Lorg/checkerframework/common/value/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 273
    return-object p2

    .line 277
    .end local v3    # "castRange":Lorg/checkerframework/common/value/util/Range;
    .end local v4    # "castTypeKind":Ljavax/lang/model/type/TypeKind;
    .end local v5    # "exprRange":Lorg/checkerframework/common/value/util/Range;
    :cond_8
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v3

    return-object v3
.end method
