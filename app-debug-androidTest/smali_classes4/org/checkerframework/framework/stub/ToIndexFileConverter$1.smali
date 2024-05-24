.class Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;
.super Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;
.source "ToIndexFileConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitInnerTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter<",
        "Ljava/lang/Void;",
        "Lscenelib/annotations/el/InnerTypeLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$elem:Lscenelib/annotations/el/ATypeElement;


# direct methods
.method constructor <init>(Lscenelib/annotations/el/ATypeElement;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->val$elem:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;-><init>()V

    return-void
.end method

.method private extendedTypePath(Lscenelib/annotations/el/InnerTypeLocation;II)Lscenelib/annotations/el/InnerTypeLocation;
    .locals 2
    .param p1, "loc"    # Lscenelib/annotations/el/InnerTypeLocation;
    .param p2, "tag"    # I
    .param p3, "arg"    # I

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 533
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    iget-object v1, p1, Lscenelib/annotations/el/InnerTypeLocation;->location:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 534
    invoke-static {p2, p3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->fromBinary(II)Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v1, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-direct {v1, v0}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private visitInnerType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/InnerTypeLocation;)V
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "loc"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 517
    iget-object v0, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->val$elem:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0, p2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    .line 518
    .local v0, "typeElem":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 519
    .local v2, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-static {v2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->access$000(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v3

    .line 520
    .local v3, "anno":Lscenelib/annotations/Annotation;
    iget-object v4, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .end local v2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v3    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_0

    .line 523
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p2, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Lscenelib/annotations/el/InnerTypeLocation;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p2, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lscenelib/annotations/el/InnerTypeLocation;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p2, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Lscenelib/annotations/el/InnerTypeLocation;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Lscenelib/annotations/el/InnerTypeLocation;)Ljava/lang/Void;
    .locals 9
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .param p2, "loc"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 481
    move-object v0, p2

    .line 482
    .local v0, "ext":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getArrayLevel()I

    move-result v1

    .line 483
    .local v1, "n":I
    move-object v2, p1

    .line 484
    .local v2, "currentType":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 485
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5, v4}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->extendedTypePath(Lscenelib/annotations/el/InnerTypeLocation;II)Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v0

    .line 486
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 487
    .local v5, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    iget-object v6, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->val$elem:Lscenelib/annotations/el/ATypeElement;

    iget-object v6, v6, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v6, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/ATypeElement;

    .line 488
    .local v6, "typeElem":Lscenelib/annotations/el/ATypeElement;
    invoke-static {v5}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->access$000(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v7

    .line 489
    .local v7, "anno":Lscenelib/annotations/Annotation;
    iget-object v8, v6, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v5    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v6    # "typeElem":Lscenelib/annotations/el/ATypeElement;
    .end local v7    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_1

    .line 491
    :cond_0
    move-object v4, v2

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 493
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    .line 484
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lscenelib/annotations/el/InnerTypeLocation;)Ljava/lang/Void;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p2, "loc"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 468
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 470
    .local v0, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 471
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 472
    .local v2, "inner":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    const/4 v3, 0x3

    invoke-direct {p0, p2, v3, v1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->extendedTypePath(Lscenelib/annotations/el/InnerTypeLocation;II)Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v3

    .line 473
    .local v3, "ext":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->visitInnerType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 470
    .end local v2    # "inner":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .end local v3    # "ext":Lscenelib/annotations/el/InnerTypeLocation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Lscenelib/annotations/el/InnerTypeLocation;)Ljava/lang/Void;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .param p2, "loc"    # Lscenelib/annotations/el/InnerTypeLocation;

    .line 500
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 501
    .local v0, "lower":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 502
    .local v2, "upper":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0, p2, v4, v3}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->extendedTypePath(Lscenelib/annotations/el/InnerTypeLocation;II)Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v5

    .line 504
    .local v5, "ext":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-direct {p0, v0, v5}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->visitInnerType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 506
    .end local v5    # "ext":Lscenelib/annotations/el/InnerTypeLocation;
    :cond_0
    if-eqz v2, :cond_1

    .line 507
    invoke-direct {p0, p2, v4, v3}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->extendedTypePath(Lscenelib/annotations/el/InnerTypeLocation;II)Lscenelib/annotations/el/InnerTypeLocation;

    move-result-object v3

    .line 508
    .local v3, "ext":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;->visitInnerType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 510
    .end local v3    # "ext":Lscenelib/annotations/el/InnerTypeLocation;
    :cond_1
    return-object v1
.end method
