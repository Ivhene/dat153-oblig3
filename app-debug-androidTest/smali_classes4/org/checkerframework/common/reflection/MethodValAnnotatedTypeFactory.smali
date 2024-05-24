.class public Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "MethodValAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;,
        Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;
    }
.end annotation


# static fields
.field private static final UNKNOWN_PARAM_LENGTH:I = -0x1


# instance fields
.field private final METHODVAL_BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field private final UNKNOWN_METHOD:Ljavax/lang/model/element/AnnotationMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 53
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 40
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/reflection/qual/MethodValBottom;

    .line 41
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->METHODVAL_BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 42
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/reflection/qual/UnknownMethod;

    .line 43
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->UNKNOWN_METHOD:Ljavax/lang/model/element/AnnotationMirror;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->postInit()V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Ljava/util/Set;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    .param p1, "x1"    # Ljava/util/Set;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->createMethodVal(Ljava/util/Set;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;Z)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    .param p1, "x1"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "x2"    # Z

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getClassNamesFromClassValChecker(Lcom/sun/source/tree/ExpressionTree;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;
    .param p1, "x1"    # Lcom/sun/source/tree/ExpressionTree;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getMethodNamesFromStringArg(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->UNKNOWN_METHOD:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method private createMethodVal(Ljava/util/Set;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/common/reflection/MethodSignature;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 86
    .local p1, "sigs":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/common/reflection/MethodSignature;

    .line 90
    .local v4, "sig":Lorg/checkerframework/common/reflection/MethodSignature;
    iget-object v5, v4, Lorg/checkerframework/common/reflection/MethodSignature;->className:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v5, v4, Lorg/checkerframework/common/reflection/MethodSignature;->methodName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget v5, v4, Lorg/checkerframework/common/reflection/MethodSignature;->params:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v4    # "sig":Lorg/checkerframework/common/reflection/MethodSignature;
    goto :goto_0

    .line 94
    :cond_0
    new-instance v3, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v4, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v5, Lorg/checkerframework/common/reflection/qual/MethodVal;

    .line 95
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 96
    .local v3, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v4, "className"

    invoke-virtual {v3, v4, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 97
    const-string v4, "methodName"

    invoke-virtual {v3, v4, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 98
    const-string v4, "params"

    invoke-virtual {v3, v4, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 99
    invoke-virtual {v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4
.end method

.method private getClassNamesFromClassValChecker(Lcom/sun/source/tree/ExpressionTree;Z)Ljava/util/List;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "mustBeExact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    const-class v0, Lorg/checkerframework/common/reflection/ClassValChecker;

    .line 111
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    .line 112
    .local v0, "classValATF":Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
    invoke-virtual {v0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 113
    .local v1, "classAnno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Lorg/checkerframework/common/reflection/qual/ClassVal;

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 115
    .local v3, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v4, 0x1

    const-string v5, "value"

    if-eqz v3, :cond_0

    .line 116
    const-class v6, Ljava/lang/String;

    .line 117
    invoke-static {v3, v5, v6, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 118
    :cond_0
    if-nez p2, :cond_1

    .line 120
    const-class v6, Lorg/checkerframework/common/reflection/qual/ClassBound;

    invoke-virtual {v1, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_1

    .line 122
    const-class v6, Ljava/lang/String;

    .line 123
    invoke-static {v3, v5, v6, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 127
    :cond_1
    :goto_0
    return-object v2
.end method

.method static getListOfMethodSignatures(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 9
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/common/reflection/MethodSignature;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/common/reflection/MethodSignature;>;"
    const-class v1, Ljava/lang/String;

    .line 74
    const-string v2, "methodName"

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/String;

    .line 76
    const-string v4, "className"

    invoke-static {p0, v4, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, Ljava/lang/Integer;

    .line 78
    const-string v5, "params"

    invoke-static {p0, v5, v4, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 80
    new-instance v5, Lorg/checkerframework/common/reflection/MethodSignature;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lorg/checkerframework/common/reflection/MethodSignature;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "i":I
    :cond_0
    return-object v0
.end method

.method private getMethodNamesFromStringArg(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;
    .locals 7
    .param p1, "arg"    # Lcom/sun/source/tree/ExpressionTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 139
    .local v1, "valueATF":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    invoke-virtual {v1, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 140
    .local v2, "valueAnno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v3, Lorg/checkerframework/common/value/qual/StringVal;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 141
    .local v3, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_0

    .line 142
    const-class v4, Ljava/lang/String;

    .line 143
    const-string v5, "value"

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 145
    :cond_0
    return-object v0
.end method


# virtual methods
.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 2
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 150
    new-instance v0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->METHODVAL_BOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValQualifierHierarchy;-><init>(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
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

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/common/reflection/qual/MethodVal;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/common/reflection/qual/MethodValBottom;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/common/reflection/qual/UnknownMethod;

    aput-object v3, v1, v2

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 213
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory$MethodValTreeAnnotator;-><init>(Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method protected initializeReflectionResolution()V
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "resolveReflection"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    .local v0, "debug":Z
    new-instance v1, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;

    iget-object v2, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v1, v2, p0, v0}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;Z)V

    iput-object v1, p0, Lorg/checkerframework/common/reflection/MethodValAnnotatedTypeFactory;->reflectionResolver:Lorg/checkerframework/common/reflection/ReflectionResolver;

    .line 69
    return-void
.end method
