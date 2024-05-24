.class public Lorg/checkerframework/javacutil/ElementUtils;
.super Ljava/lang/Object;
.source "ElementUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final classElementKinds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    nop

    .line 498
    const-class v0, Ljavax/lang/model/element/ElementKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/ElementUtils;->classElementKinds:Ljava/util/Set;

    .line 499
    invoke-static {}, Ljavax/lang/model/element/ElementKind;->values()[Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 500
    .local v3, "kind":Ljavax/lang/model/element/ElementKind;
    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 501
    :cond_0
    sget-object v4, Lorg/checkerframework/javacutil/ElementUtils;->classElementKinds:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v3    # "kind":Ljavax/lang/model/element/ElementKind;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class ElementUtils cannot be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static classElementKinds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ElementKind;",
            ">;"
        }
    .end annotation

    .line 512
    sget-object v0, Lorg/checkerframework/javacutil/ElementUtils;->classElementKinds:Ljava/util/Set;

    return-object v0
.end method

.method public static enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;
    .locals 2
    .param p0, "elem"    # Ljavax/lang/model/element/Element;

    .line 48
    move-object v0, p0

    .line 49
    .local v0, "result":Ljavax/lang/model/element/Element;
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 51
    .local v1, "encl":Ljavax/lang/model/element/Element;
    move-object v0, v1

    .line 52
    .end local v1    # "encl":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 53
    :cond_0
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    return-object v1
.end method

.method public static enclosingPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;
    .locals 3
    .param p0, "elem"    # Ljavax/lang/model/element/Element;

    .line 65
    move-object v0, p0

    .line 66
    .local v0, "result":Ljavax/lang/model/element/Element;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    .line 67
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 68
    .local v1, "encl":Ljavax/lang/model/element/Element;
    move-object v0, v1

    .line 69
    .end local v1    # "encl":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 70
    :cond_0
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/PackageElement;

    return-object v1
.end method

.method public static findFieldInType(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljavax/lang/model/element/VariableElement;
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "name"    # Ljava/lang/String;

    .line 285
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 286
    .local v1, "field":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface {v2, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    return-object v1

    .line 289
    .end local v1    # "field":Ljavax/lang/model/element/VariableElement;
    :cond_0
    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findFieldsInType(Ljavax/lang/model/element/TypeElement;Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 307
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 308
    .local v0, "results":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    .line 309
    .local v2, "field":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v2    # "field":Ljavax/lang/model/element/VariableElement;
    :cond_0
    goto :goto_0

    .line 313
    :cond_1
    return-object v0
.end method

.method public static findFieldsInTypeOrSuperType(Ljavax/lang/model/type/TypeMirror;Ljava/util/Collection;)Ljava/util/Set;
    .locals 6
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 333
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 334
    .local v0, "origCardinality":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v1, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/VariableElement;>;"
    invoke-static {p0, p1, v1}, Lorg/checkerframework/javacutil/ElementUtils;->findFieldsInTypeOrSuperType(Ljavax/lang/model/type/TypeMirror;Ljava/util/Collection;Ljava/util/Set;)V

    .line 338
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    .line 344
    return-object v1

    .line 339
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 340
    const-string v4, "Bad sizes: %d != %d + %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static findFieldsInTypeOrSuperType(Ljavax/lang/model/type/TypeMirror;Ljava/util/Collection;Ljava/util/Set;)V
    .locals 6
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;)V"
        }
    .end annotation

    .line 353
    .local p1, "notFound":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "foundFields":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/VariableElement;>;"
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    return-void

    .line 356
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->getTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 357
    .local v0, "elt":Ljavax/lang/model/element/TypeElement;
    if-eqz v0, :cond_4

    .line 358
    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/ElementUtils;->findFieldsInType(Ljavax/lang/model/element/TypeElement;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 359
    .local v1, "fieldElts":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/VariableElement;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 360
    .local v3, "field":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getModifiers()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 361
    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 363
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 365
    .end local v3    # "field":Ljavax/lang/model/element/VariableElement;
    :goto_1
    goto :goto_0

    .line 366
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 368
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 369
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/checkerframework/javacutil/ElementUtils;->findFieldsInTypeOrSuperType(Ljavax/lang/model/type/TypeMirror;Ljava/util/Collection;Ljava/util/Set;)V

    .line 371
    :cond_3
    return-void

    .line 357
    .end local v1    # "fieldElts":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/VariableElement;>;"
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static getAllFieldsIn(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;
    .locals 5
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "elements"    # Ljavax/lang/model/util/Elements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 464
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/ElementUtils;->getSuperTypes(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;

    move-result-object v1

    .line 465
    .local v1, "alltypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 466
    .local v3, "atype":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 467
    .end local v3    # "atype":Ljavax/lang/model/element/TypeElement;
    goto :goto_0

    .line 468
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getAllMethodsIn(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;
    .locals 5
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "elements"    # Ljavax/lang/model/util/Elements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v0, "meths":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    invoke-static {p0, p1}, Lorg/checkerframework/javacutil/ElementUtils;->getSuperTypes(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;

    move-result-object v1

    .line 481
    .local v1, "alltypes":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    .line 482
    .local v3, "atype":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 483
    .end local v3    # "atype":Ljavax/lang/model/element/TypeElement;
    goto :goto_0

    .line 484
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getAllTypeElementsIn(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    return-object v0
.end method

.method public static getQualifiedClassName(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/Name;
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 156
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 157
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/PackageElement;

    .line 158
    .local v0, "elem":Ljavax/lang/model/element/PackageElement;
    invoke-interface {v0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    return-object v1

    .line 161
    .end local v0    # "elem":Ljavax/lang/model/element/PackageElement;
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 162
    .local v0, "elem":Ljavax/lang/model/element/TypeElement;
    if-nez v0, :cond_1

    .line 163
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    return-object v1
.end method

.method public static getSimpleName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 3
    .param p0, "element"    # Ljavax/lang/model/element/ExecutableElement;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/lang/model/element/VariableElement;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->simpleTypeName(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/lang/model/element/VariableElement;>;"
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSuperTypes(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Elements;)Ljava/util/List;
    .locals 8
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "elements"    # Ljavax/lang/model/util/Elements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "superelems":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    if-nez p0, :cond_0

    .line 407
    return-object v0

    .line 411
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 412
    .local v1, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {v1, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 414
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 415
    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 422
    .local v2, "current":Ljavax/lang/model/element/TypeElement;
    :try_start_0
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3
    :try_end_0
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .local v3, "supertypecls":Ljavax/lang/model/type/TypeMirror;
    goto :goto_1

    .line 423
    .end local v3    # "supertypecls":Ljavax/lang/model/type/TypeMirror;
    :catch_0
    move-exception v3

    .line 427
    .local v3, "cf":Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
    const/4 v4, 0x0

    move-object v3, v4

    .line 430
    .local v3, "supertypecls":Ljavax/lang/model/type/TypeMirror;
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_1

    .line 431
    move-object v4, v3

    check-cast v4, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 432
    .local v4, "supercls":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 433
    invoke-interface {v1, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 434
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v4    # "supercls":Ljavax/lang/model/element/TypeElement;
    :cond_1
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeMirror;

    .line 439
    .local v5, "supertypeitf":Ljavax/lang/model/type/TypeMirror;
    move-object v6, v5

    check-cast v6, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v6}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/TypeElement;

    .line 440
    .local v6, "superitf":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 441
    invoke-interface {v1, v6}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 442
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v5    # "supertypeitf":Ljavax/lang/model/type/TypeMirror;
    .end local v6    # "superitf":Ljavax/lang/model/element/TypeElement;
    :cond_2
    goto :goto_2

    .line 445
    .end local v2    # "current":Ljavax/lang/model/element/TypeElement;
    .end local v3    # "supertypecls":Ljavax/lang/model/type/TypeMirror;
    :cond_3
    goto :goto_0

    .line 448
    :cond_4
    const-string v2, "java.lang.Object"

    invoke-interface {p1, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 449
    .local v2, "jlobject":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 450
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 140
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 141
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_1

    .line 143
    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0

    .line 145
    :cond_1
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public static getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 3
    .param p0, "elt"    # Ljavax/lang/model/element/Element;

    .line 171
    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->getQualifiedClassName(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 172
    .local v0, "n":Ljavax/lang/model/element/Name;
    if-nez v0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 175
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_2

    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 176
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasReceiver(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 390
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 392
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_1

    .line 393
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0
.end method

.method public static isClassElement(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 522
    invoke-static {}, Lorg/checkerframework/javacutil/ElementUtils;->classElementKinds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCompileTimeConstant(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "elt"    # Ljavax/lang/model/element/Element;

    .line 236
    if-eqz p0, :cond_1

    .line 237
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 238
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 239
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0
.end method

.method public static isEffectivelyFinal(Ljavax/lang/model/element/Element;)Z
    .locals 8
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 124
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 125
    .local v0, "sym":Lcom/sun/tools/javac/code/Symbol;
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getEnclosingElement()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v6, 0x400

    and-long/2addr v1, v6

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 127
    return v3

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v6, 0x20000000010L

    and-long/2addr v1, v6

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static isElementFromByteCode(Ljavax/lang/model/element/Element;)Z
    .locals 3
    .param p0, "elt"    # Ljavax/lang/model/element/Element;

    .line 246
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 247
    return v0

    .line 250
    :cond_0
    instance-of v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v1, :cond_2

    .line 251
    move-object v1, p0

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 252
    .local v1, "clss":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    if-eqz v2, :cond_1

    .line 254
    iget-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 256
    :cond_1
    return v0

    .line 259
    .end local v1    # "clss":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_2
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCodeHelper(Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method private static isElementFromByteCodeHelper(Ljavax/lang/model/element/Element;)Z
    .locals 4
    .param p0, "elt"    # Ljavax/lang/model/element/Element;

    .line 266
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 267
    return v0

    .line 269
    :cond_0
    instance-of v1, p0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v1, :cond_4

    .line 270
    move-object v1, p0

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 271
    .local v1, "clss":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    invoke-interface {v2}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    .line 274
    invoke-interface {v2}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".class)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->classfile:Ljavax/tools/JavaFileObject;

    .line 275
    invoke-interface {v2}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".class)]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 273
    :cond_2
    return v0

    .line 277
    :cond_3
    return v0

    .line 280
    .end local v1    # "clss":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_4
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCodeHelper(Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method public static isError(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sun.tools.javac.comp.Resolve$SymbolNotFoundError"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFinal(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 115
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 2
    .param p0, "questioned"    # Ljavax/lang/model/element/ExecutableElement;
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 574
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 575
    .local v0, "enclosing":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 576
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 575
    :goto_1
    return v1
.end method

.method public static isObject(Ljavax/lang/model/element/TypeElement;)Z
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/TypeElement;

    .line 231
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isStatic(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 106
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTypeDeclaration(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p0, "elt"    # Ljavax/lang/model/element/Element;

    .line 532
    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

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

.method public static varargs matchesElement(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 4
    .param p0, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 549
    .local p2, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 550
    return v1

    .line 553
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v2, p2

    if-eq v0, v2, :cond_1

    .line 554
    return v1

    .line 556
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 557
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    .line 558
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    .line 559
    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 560
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v0

    .line 561
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 563
    return v1

    .line 556
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static parentPackage(Ljavax/lang/model/element/PackageElement;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/element/PackageElement;
    .locals 4
    .param p0, "elem"    # Ljavax/lang/model/element/PackageElement;
    .param p1, "e"    # Ljavax/lang/model/util/Elements;

    .line 90
    invoke-interface {p0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "fqnstart":Ljava/lang/String;
    move-object v1, v0

    .line 92
    .local v1, "fqn":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-interface {p1, v1}, Ljavax/lang/model/util/Elements;->getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;

    move-result-object v2

    return-object v2

    .line 96
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static simpleTypeName(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 209
    sget-object v0, Lorg/checkerframework/javacutil/ElementUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :pswitch_0
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :pswitch_1
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    check-cast v1, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->simpleTypeName(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ElementUtils: unhandled type kind: %s, type: %s"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
