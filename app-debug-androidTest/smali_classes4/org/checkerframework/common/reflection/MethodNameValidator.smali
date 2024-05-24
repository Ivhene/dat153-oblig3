.class Lorg/checkerframework/common/reflection/MethodNameValidator;
.super Lorg/checkerframework/common/basetype/BaseTypeValidator;
.source "MethodValVisitor.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p3, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "visitor":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeValidator;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 39
    return-void
.end method

.method private legalMethodName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;

    .line 67
    const-string v0, "<init>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 71
    return v2

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 74
    .local v0, "methodNameChars":[C
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    return v2

    .line 77
    :cond_2
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 78
    aget-char v4, v0, v3

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 79
    return v2

    .line 77
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "i":I
    :cond_4
    return v1
.end method


# virtual methods
.method public isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z
    .locals 9
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 43
    const-class v0, Lorg/checkerframework/common/reflection/qual/MethodVal;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 44
    .local v0, "methodVal":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_3

    .line 45
    const-class v1, Ljava/lang/String;

    .line 46
    const-string v2, "className"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/Integer;

    .line 49
    const-string v4, "params"

    invoke-static {v0, v4, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-class v4, Ljava/lang/String;

    .line 51
    const-string v5, "methodName"

    invoke-static {v0, v5, v4, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .line 53
    .local v3, "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 54
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/common/reflection/MethodNameValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "invalid.methodval"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 57
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    .local v5, "methodName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/checkerframework/common/reflection/MethodNameValidator;->legalMethodName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 59
    iget-object v6, p0, Lorg/checkerframework/common/reflection/MethodNameValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v7, "illegal.methodname"

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 61
    .end local v5    # "methodName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 63
    .end local v1    # "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "methodNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    return v1
.end method
