.class public Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "SignednessAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;
    }
.end annotation


# instance fields
.field private final INT_RANGE_FROM_NON_NEGATIVE:Ljavax/lang/model/element/AnnotationMirror;

.field private final INT_RANGE_FROM_POSITIVE:Ljavax/lang/model/element/AnnotationMirror;

.field private final SIGNED:Ljavax/lang/model/element/AnnotationMirror;

.field private final SIGNEDNESS_GLB:Ljavax/lang/model/element/AnnotationMirror;

.field private final UNKNOWN_SIGNEDNESS:Ljavax/lang/model/element/AnnotationMirror;

.field private computingAnnotatedTypeMirrorOfLHS:Z

.field valueFactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 3
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 55
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 36
    iget-object v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/signedness/qual/SignednessGlb;

    .line 37
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNEDNESS_GLB:Ljavax/lang/model/element/AnnotationMirror;

    .line 39
    iget-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/signedness/qual/Signed;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNED:Ljavax/lang/model/element/AnnotationMirror;

    .line 41
    iget-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/signedness/qual/UnknownSignedness;

    .line 42
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->UNKNOWN_SIGNEDNESS:Ljavax/lang/model/element/AnnotationMirror;

    .line 45
    iget-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/common/value/qual/IntRangeFromNonNegative;

    .line 46
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->INT_RANGE_FROM_NON_NEGATIVE:Ljavax/lang/model/element/AnnotationMirror;

    .line 48
    iget-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/common/value/qual/IntRangeFromPositive;

    .line 49
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->INT_RANGE_FROM_POSITIVE:Ljavax/lang/model/element/AnnotationMirror;

    .line 51
    const-class v1, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {p0, v1}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iput-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->valueFactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 57
    const-class v1, Lorg/checkerframework/checker/signedness/qual/SignedPositive;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 59
    invoke-virtual {p0}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->postInit()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;

    .line 33
    iget-object v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->UNKNOWN_SIGNEDNESS:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private addSignednessGlbAnnotation(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 111
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 112
    .local v0, "javaType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 113
    .local v1, "javaTypeKind":Ljavax/lang/model/type/TypeKind;
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_3

    .line 114
    sget-object v2, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_3

    .line 119
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->valueFactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 122
    .local v2, "valueATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->INT_RANGE_FROM_NON_NEGATIVE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->INT_RANGE_FROM_POSITIVE:Ljavax/lang/model/element/AnnotationMirror;

    .line 123
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNED:Ljavax/lang/model/element/AnnotationMirror;

    .line 124
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNEDNESS_GLB:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->valueFactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v2, v3}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getPossibleValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 129
    .local v3, "treeRange":Lorg/checkerframework/common/value/util/Range;
    if-eqz v3, :cond_3

    .line 130
    sget-object v4, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/16 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    iget-object v4, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNEDNESS_GLB:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 143
    :pswitch_1
    const-wide/32 v7, 0x7fffffff

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    iget-object v4, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNEDNESS_GLB:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 138
    :pswitch_2
    const-wide/16 v7, 0x7fff

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNEDNESS_GLB:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_0

    .line 133
    :pswitch_3
    const-wide/16 v7, 0x7f

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    iget-object v4, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->SIGNEDNESS_GLB:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 159
    .end local v2    # "valueATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "treeRange":Lorg/checkerframework/common/value/util/Range;
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addUnknownSignednessToSomeLocals(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 166
    sget-object v0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 171
    :pswitch_1
    new-instance v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;

    iget-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;-><init>(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 172
    .local v0, "defaults":Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
    iget-object v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->UNKNOWN_SIGNEDNESS:Ljavax/lang/model/element/AnnotationMirror;

    sget-object v2, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->addCheckedCodeDefault(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 173
    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults;->annotate(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 174
    nop

    .line 178
    .end local v0    # "defaults":Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "iUseFlow"    # Z

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->addUnknownSignednessToSomeLocals(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 78
    iget-boolean v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->addSignednessGlbAnnotation(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 82
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->addComputedTypeAnnotations(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)V

    .line 83
    return-void
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 65
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    const-class v1, Lorg/checkerframework/checker/signedness/qual/SignedPositive;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 66
    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 182
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory$SignednessTreeAnnotator;-><init>(Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 183
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 182
    return-object v0
.end method

.method public getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "lhsTree"    # Lcom/sun/source/tree/Tree;

    .line 96
    iget-boolean v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 97
    .local v0, "oldComputingAnnotatedTypeMirrorOfLHS":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 98
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 99
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iput-boolean v0, p0, Lorg/checkerframework/checker/signedness/SignednessAnnotatedTypeFactory;->computingAnnotatedTypeMirrorOfLHS:Z

    .line 100
    return-object v1
.end method
