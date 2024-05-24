.class Lorg/checkerframework/common/reflection/ClassNameValidator;
.super Lorg/checkerframework/common/basetype/BaseTypeValidator;
.source "ClassValVisitor.java"


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

    .line 37
    .local p2, "visitor":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeValidator;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 38
    return-void
.end method

.method private isJavaIdentifier(Ljava/lang/String;)Z
    .locals 4
    .param p1, "identifier"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 89
    .local v0, "identifierChars":[C
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 93
    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    return v2

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 90
    :cond_3
    :goto_1
    return v2
.end method

.method private isLegalClassName(Ljava/lang/String;)Z
    .locals 8
    .param p1, "className"    # Ljava/lang/String;

    .line 69
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "lastBracket":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 71
    return v3

    .line 73
    :cond_0
    const-string v1, "\\[\\]"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v1, "(\\.)"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "identifiers":[Ljava/lang/String;
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 76
    .local v6, "identifier":Ljava/lang/String;
    invoke-direct {p0, v6}, Lorg/checkerframework/common/reflection/ClassNameValidator;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 77
    return v3

    .line 75
    .end local v6    # "identifier":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_2
    return v2
.end method


# virtual methods
.method public isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 46
    const-class v0, Lorg/checkerframework/common/reflection/qual/ClassVal;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 47
    .local v0, "classVal":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    const-class v1, Lorg/checkerframework/common/reflection/qual/ClassBound;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 48
    if-eqz v0, :cond_2

    .line 49
    iget-object v1, p0, Lorg/checkerframework/common/reflection/ClassNameValidator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    .line 51
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getClassNamesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    .local v3, "className":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/checkerframework/common/reflection/ClassNameValidator;->isLegalClassName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    iget-object v4, p0, Lorg/checkerframework/common/reflection/ClassNameValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "illegal.classname"

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 56
    .end local v3    # "className":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 58
    .end local v1    # "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    return v1
.end method
