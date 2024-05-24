.class Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;
.super Ljava/lang/Object;
.source "BoundsInitializer.java"

# interfaces
.implements Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializerVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

.field private final intersections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/IntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            ">;"
        }
    .end annotation
.end field

.field private final rawTypeWildcards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljavax/lang/model/type/WildcardType;",
            ">;"
        }
    .end annotation
.end field

.field private final topLevelStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

.field private final typeVarToStructure:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;",
            ">;"
        }
    .end annotation
.end field

.field private final typevars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final wildcards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/WildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Ljava/util/Map;)V
    .locals 3
    .param p1, "boundStructure"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p2, "typevars":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typeVarToStructure:Ljava/util/Map;

    .line 291
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->wildcards:Ljava/util/Map;

    .line 292
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->intersections:Ljava/util/Map;

    .line 605
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->rawTypeWildcards:Ljava/util/Map;

    .line 299
    iput-object p1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->topLevelStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    .line 300
    iput-object p1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    .line 301
    if-eqz p2, :cond_0

    .line 302
    iput-object p2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typevars:Ljava/util/Map;

    goto :goto_0

    .line 304
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typevars:Ljava/util/Map;

    .line 306
    :goto_0
    instance-of v1, p1, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    if-eqz v1, :cond_1

    .line 307
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    .line 308
    .local v1, "typeVarStruct":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    iget-object v2, v1, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->typeVar:Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v1    # "typeVarStruct":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    :cond_1
    return-void
.end method

.method private getJavaType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/List;I)Ljavax/lang/model/type/TypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;I)",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation

    .line 621
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/TypeParameterElement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeParameterElement;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 623
    .local v0, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->rawTypeWildcards:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->rawTypeWildcards:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    return-object v1

    .line 626
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer;->access$300(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljavax/lang/model/type/WildcardType;

    move-result-object v1

    .line 627
    .local v1, "wildcard":Ljavax/lang/model/type/WildcardType;
    iget-object v2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->rawTypeWildcards:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-object v1

    .line 630
    .end local v0    # "typeVariable":Ljavax/lang/model/type/TypeVariable;
    .end local v1    # "wildcard":Ljavax/lang/model/type/WildcardType;
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method private initializeTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 9
    .param p1, "declaredType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 556
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 557
    .local v0, "actualType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    return-void

    .line 560
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 561
    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 563
    .local v1, "typeElement":Ljavax/lang/model/element/TypeElement;
    iget-object v2, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    if-nez v2, :cond_3

    .line 564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v2, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 566
    nop

    .line 567
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->getJavaType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/util/List;I)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 568
    .local v4, "javaTypeArg":Ljavax/lang/model/type/TypeMirror;
    iget-object v5, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 569
    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 571
    .local v5, "atmArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v6, v7, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 573
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setUninferredTypeArgument()V

    .line 565
    .end local v4    # "javaTypeArg":Ljavax/lang/model/type/TypeMirror;
    .end local v5    # "atmArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 577
    .end local v2    # "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_3
    iget-object v2, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    .line 580
    .restart local v2    # "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .local v3, "typeArgReplacements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 582
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 583
    .local v5, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v6, Lorg/checkerframework/framework/type/BoundsInitializer$TypeArgNode;

    invoke-direct {v6, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$TypeArgNode;-><init>(I)V

    invoke-virtual {p0, v6}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v6

    .line 584
    .local v6, "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_4

    .line 585
    move-object v7, v5

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 586
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeParameterElement;

    invoke-virtual {v7, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setTypeVariable(Ljavax/lang/model/element/TypeParameterElement;)V

    .line 588
    :cond_4
    invoke-virtual {p0, v5}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->getOrVisit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {p0, v6}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 581
    .end local v5    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 592
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->setTypeArguments(Ljava/util/List;)V

    .line 593
    return-void
.end method

.method public static invalidType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p0, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 635
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type in Wildcard bound:\nkind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\natm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addImmediateTypeVarPaths(Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;)V
    .locals 7
    .param p1, "refMap"    # Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    .param p2, "basePath"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    .param p3, "targetStruct"    # Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    .line 721
    iget-object v0, p3, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->immediateBoundTypeVars:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    .line 722
    .local v1, "path":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    move-result-object v2

    .line 723
    .local v2, "newPath":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v3, p3, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->pathToTypeVar:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    .line 726
    .local v3, "immTypeVar":Ljavax/lang/model/type/TypeVariable;
    iget-object v4, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typeVarToStructure:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    .line 728
    .local v4, "immTvStructure":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    iget-object v5, v4, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->annotatedTypeVar:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 729
    .local v5, "template":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .end local v1    # "path":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    .end local v2    # "newPath":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    .end local v3    # "immTypeVar":Ljavax/lang/model/type/TypeVariable;
    .end local v4    # "immTvStructure":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    .end local v5    # "template":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 731
    :cond_0
    return-void
.end method

.method public addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 645
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    iget-object v0, v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->add(Ljava/lang/Object;)Z

    .line 646
    return-object p1
.end method

.method public createReferenceMap(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;)Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    .locals 7
    .param p1, "boundStruct"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    .line 703
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$1;)V

    .line 705
    .local v0, "refMap":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    iget-object v1, p1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->pathToTypeVar:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 706
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Ljavax/lang/model/type/TypeVariable;>;"
    iget-object v3, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typeVarToStructure:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    .line 708
    .local v3, "targetStructure":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    iget-object v4, v3, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->annotatedTypeVar:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 709
    .local v4, "template":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {p0, v0, v5, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addImmediateTypeVarPaths(Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;)V

    .line 712
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Ljavax/lang/model/type/TypeVariable;>;"
    .end local v3    # "targetStructure":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    .end local v4    # "template":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 714
    :cond_0
    return-object v0
.end method

.method public fixTypeVarPathReference(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Map;)V
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;",
            ">;)V"
        }
    .end annotation

    .line 783
    .local p2, "typeVarToRefMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;

    .line 785
    .local v0, "refMap":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 786
    .local v2, "pathToRef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    .line 787
    .local v3, "path":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-result-object v4

    .line 789
    .local v4, "replacement":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p0, p1, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->traverseToParent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 790
    .local v5, "parent":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 792
    .local v6, "terminus":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {v6, v5, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->replaceType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 793
    .end local v2    # "pathToRef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    .end local v3    # "path":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    .end local v4    # "replacement":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .end local v5    # "parent":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "terminus":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    goto :goto_0

    .line 794
    :cond_0
    return-void
.end method

.method public fixWildcardPathReference(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V
    .locals 6
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;",
            ">;)V"
        }
    .end annotation

    .line 769
    .local p2, "typeVarToRefMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->topLevelStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->createReferenceMap(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;)Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;

    move-result-object v0

    .line 770
    .local v0, "topLevelMap":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 771
    .local v2, "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->fixTypeVarPathReference(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Map;)V

    .line 772
    .end local v2    # "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 775
    .local v2, "pathToRef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {p0, p1, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->traverseToParent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 776
    .local v3, "parent":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 777
    .local v4, "terminus":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->setType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 778
    .end local v2    # "pathToRef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    .end local v3    # "parent":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "terminus":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    goto :goto_1

    .line 779
    :cond_1
    return-void
.end method

.method public getOrVisit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 453
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->intersections:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->intersections:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 466
    :pswitch_2
    nop

    .line 468
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 469
    .local v0, "key":Ljavax/lang/model/type/TypeVariable;
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typevars:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typevars:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v1

    .line 455
    .end local v0    # "key":Ljavax/lang/model/type/TypeVariable;
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 456
    .local v0, "wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->wildcards:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->wildcards:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v1

    .line 476
    .end local v0    # "wildcard":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 477
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public haveSeenTypeVar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z
    .locals 2
    .param p1, "typeVariable"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 685
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typeVarToStructure:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V
    .locals 6
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 523
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 525
    .local v0, "typeFactory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v1

    .line 527
    .local v1, "javaWildcardType":Ljavax/lang/model/type/WildcardType;
    invoke-interface {v1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 529
    invoke-interface {v1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .local v2, "javaExtendsBound":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 530
    .end local v2    # "javaExtendsBound":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getTypeVariable()Ljavax/lang/model/type/TypeVariable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 532
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getTypeVariable()Ljavax/lang/model/type/TypeVariable;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .restart local v2    # "javaExtendsBound":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 535
    .end local v2    # "javaExtendsBound":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    iget-object v2, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 536
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/TypesUtils;->wildUpperBound(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 540
    .restart local v2    # "javaExtendsBound":Ljavax/lang/model/type/TypeMirror;
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    iget-object v3, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->rawTypeWildcards:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getTypeVariable()Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_2
    nop

    .line 545
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 546
    .local v3, "extendsBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 548
    iget-object v4, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->wildcards:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v4, Lorg/checkerframework/framework/type/BoundsInitializer$ExtendsNode;

    invoke-direct {v4}, Lorg/checkerframework/framework/type/BoundsInitializer$ExtendsNode;-><init>()V

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v4

    .line 551
    .local v4, "extendsNode":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 552
    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 553
    return-void
.end method

.method public initializeLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 2
    .param p1, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 492
    invoke-static {p1}, Lorg/checkerframework/framework/type/BoundsInitializer;->access$200(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 494
    .local v0, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v1, Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;

    invoke-direct {v1}, Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;-><init>()V

    .line 495
    .local v1, "pathNode":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 496
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 497
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 498
    return-void
.end method

.method public initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V
    .locals 6
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 501
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 503
    .local v0, "typeFactory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v1

    .line 504
    .local v1, "underlyingType":Ljavax/lang/model/type/WildcardType;
    invoke-interface {v1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 505
    .local v2, "underlyingSuperBound":Ljavax/lang/model/type/TypeMirror;
    if-nez v2, :cond_0

    .line 506
    iget-object v3, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 507
    invoke-static {v1, v3}, Lorg/checkerframework/javacutil/TypesUtils;->wildLowerBound(Ljavax/lang/model/type/TypeMirror;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 511
    :cond_0
    nop

    .line 512
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 513
    .local v3, "superBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 515
    iget-object v4, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->wildcards:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getUnderlyingType()Ljavax/lang/model/type/WildcardType;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v4, Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;

    invoke-direct {v4}, Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;-><init>()V

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v4

    .line 518
    .local v4, "superNode":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 519
    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 520
    return-void
.end method

.method public initializeUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 2
    .param p1, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 483
    invoke-static {p1}, Lorg/checkerframework/framework/type/BoundsInitializer;->access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 485
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    new-instance v1, Lorg/checkerframework/framework/type/BoundsInitializer$UpperBoundNode;

    invoke-direct {v1}, Lorg/checkerframework/framework/type/BoundsInitializer$UpperBoundNode;-><init>()V

    .line 486
    .local v1, "pathNode":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 487
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 488
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 489
    return-void
.end method

.method public popCurrentTypeVarStruct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 3
    .param p1, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 689
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    instance-of v1, v0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    if-eqz v1, :cond_0

    .line 699
    check-cast v0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    invoke-static {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->access$400(Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    .line 700
    return-void

    .line 690
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to pop WildcardStructure.\ntypeVar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncurrentStucture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushNewTypeVarStruct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 3
    .param p1, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 667
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typeVarToStructure:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 679
    .local v0, "typeVarStruct":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typeVarToStructure:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    .line 682
    return-void

    .line 668
    .end local v0    # "typeVarStruct":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting a TypeVarStructure that already exists.\ntypeVar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncurrentStructure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 650
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    iget-object v0, v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->getLast()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 662
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    iget-object v0, v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->removeLast()Ljava/lang/Object;

    .line 663
    return-object p1

    .line 651
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " It is not the last item.\nnode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncurrentPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    iget-object v2, v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolveTypeVarReferences(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 6
    .param p1, "boundedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v0, "annotatedTypeVars":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v1, "typeVarToRefMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->typeVarToStructure:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    .line 747
    .local v3, "typeVarStruct":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->createReferenceMap(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;)Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;

    move-result-object v4

    .line 748
    .local v4, "refMap":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    iget-object v5, v3, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->typeVar:Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 750
    .end local v3    # "typeVarStruct":Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
    .end local v4    # "refMap":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
    goto :goto_0

    .line 752
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 753
    .local v3, "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->fixTypeVarPathReference(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Map;)V

    .line 754
    .end local v3    # "atv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_1

    .line 756
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->topLevelStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    instance-of v2, v2, Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;

    if-eqz v2, :cond_2

    .line 757
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->fixWildcardPathReference(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V

    goto :goto_2

    .line 760
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 761
    .local v2, "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->fixTypeVarPathReference(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Map;)V

    .line 763
    .end local v2    # "typeVar":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :goto_2
    return-void
.end method

.method public traverseToParent(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "start"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "path"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    .line 798
    move-object v0, p1

    .line 799
    .local v0, "current":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 801
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->next(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-object v0
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 325
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 374
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v0

    .line 378
    .local v0, "componentNode":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->getOrVisit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 379
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 381
    .end local v0    # "componentNode":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 331
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V

    .line 332
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$EnclosingNode;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$EnclosingNode;-><init>()V

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v0

    .line 334
    .local v0, "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->enclosingType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 335
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 337
    .end local v0    # "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 441
    invoke-static {p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->invalidType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 343
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->intersections:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 344
    return-object v1

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->intersections:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/IntersectionType;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, "supertypes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 351
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 352
    .local v3, "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    new-instance v4, Lorg/checkerframework/framework/type/BoundsInitializer$IntersectionNode;

    invoke-direct {v4, v2}, Lorg/checkerframework/framework/type/BoundsInitializer$IntersectionNode;-><init>(I)V

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v4

    .line 353
    .local v4, "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 354
    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 350
    .end local v3    # "supertype":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v4    # "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public bridge synthetic visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 436
    invoke-static {p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->invalidType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 431
    invoke-static {p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->invalidType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 386
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->addTypeVar(Ljavax/lang/model/type/TypeVariable;)V

    .line 388
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->haveSeenTypeVar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->pushNewTypeVarStruct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 390
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 391
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 392
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->popCurrentTypeVarStruct(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 395
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 362
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, "alts":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 365
    .local v2, "alt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    new-instance v3, Lorg/checkerframework/framework/type/BoundsInitializer$UnionNode;

    invoke-direct {v3, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$UnionNode;-><init>(I)V

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->addPathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    move-result-object v3

    .line 366
    .local v3, "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    .line 367
    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->removePathNode(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 363
    .end local v2    # "alt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v3    # "node":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 405
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V

    .line 416
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V

    .line 426
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    iget-object v1, v1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Wildcard extends field should not be initialized:\nwildcard=%s%ncurrentPath=%s%n"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 409
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->currentStructure:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    iget-object v1, v1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Wildcard super field should not be initialized:%nwildcard=%s%ncurrentPath=%s%n"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
