.class public Lorg/checkerframework/framework/type/StructuralEqualityComparer;
.super Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.source "StructuralEqualityComparer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentTop:Ljavax/lang/model/element/AnnotationMirror;

.field protected final visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;)V
    .locals 1
    .param p1, "typeargVisitHistory"    # Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    .line 43
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 44
    iput-object p1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    .line 45
    return-void
.end method

.method private areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_3

    .line 104
    if-ne p1, p2, :cond_0

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lorg/checkerframework/framework/util/AtmCombo;->accept(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Lorg/checkerframework/framework/type/visitor/AtmComboVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 108
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected areAllEqual(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)Z"
        }
    .end annotation

    .line 151
    .local p1, "types1":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "types2":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 164
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, "types1Iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    .local v1, "types2Iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 168
    .local v2, "type1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 169
    .local v3, "type2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->checkOrAreEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    const/4 v4, 0x0

    return v4

    .line 172
    .end local v2    # "type1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "type2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 152
    .end local v0    # "types1Iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v1    # "types2Iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatching collection sizes:\n    types 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string v2, "; "

    invoke-static {v2, p1}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")\n    types 2: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    invoke-static {v2, p2}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public areEqualInHierarchy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 117
    if-eqz p3, :cond_0

    .line 119
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 120
    .local v0, "prevTop":Ljavax/lang/model/element/AnnotationMirror;
    iput-object p3, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 122
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .local v1, "areEqual":Z
    iput-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 125
    nop

    .line 127
    return v1

    .line 124
    .end local v1    # "areEqual":Z
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    throw v1

    .line 117
    .end local v0    # "prevTop":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 133
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_0

    .line 134
    nop

    .line 135
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 136
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0

    .line 138
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "currentTop null"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public boundsMatch(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 406
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 408
    .local v0, "types":Ljavax/lang/model/util/Types;
    nop

    .line 409
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 410
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 408
    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 413
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 411
    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1
.end method

.method protected checkOrAreEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 183
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->result(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object v0

    .line 184
    .local v0, "pastResult":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 188
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 189
    .local v1, "result":Ljava/lang/Boolean;
    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 190
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 49
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 51
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    return-object v1

    .line 55
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 56
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    return-object v1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v2, :cond_5

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 68
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 66
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 62
    :cond_5
    :goto_1
    return-object v1
.end method

.method protected bridge synthetic defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "p"    # Ljava/lang/Void;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotatedTypeMirrors aren\'t structurally equal.\n  type1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )\n  type2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )\n  visitHistory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method subtypeAndCompare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 6
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 363
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 367
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 368
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    return v1

    .line 370
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    move-object v1, p1

    .line 375
    .local v1, "t1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v2, p2, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .local v2, "t2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 377
    .end local v1    # "t1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "t2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v1, p1, p2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asSuper(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 379
    .restart local v1    # "t1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v2, p2

    .restart local v2    # "t2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 382
    .end local v1    # "t1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "t2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    const/4 v1, 0x0

    .line 383
    .restart local v1    # "t1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v2, 0x0

    .restart local v2    # "t2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 371
    .end local v1    # "t1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "t2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_4
    :goto_0
    move-object v1, p1

    .line 372
    .restart local v1    # "t1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object v2, p2

    .line 386
    .restart local v2    # "t2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_1
    if-eqz v1, :cond_6

    if-nez v2, :cond_5

    goto :goto_2

    .line 400
    :cond_5
    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v3

    return v3

    .line 387
    :cond_6
    :goto_2
    iget-object v3, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 388
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v3

    .line 389
    .local v3, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v4, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v4, :cond_7

    .line 390
    nop

    .line 391
    invoke-static {v3, p1, v4}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveAnnotationInHierarchy(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 393
    invoke-static {v3, p2, v5}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveAnnotationInHierarchy(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 390
    invoke-static {v4, v5}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    return v4

    .line 396
    :cond_7
    new-instance v4, Lorg/checkerframework/javacutil/BugInCF;

    const-string v5, "currentTop null"

    invoke-direct {v4, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 204
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 223
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->result(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object v0

    .line 224
    .local v0, "pastResult":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 225
    return-object v0

    .line 230
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 235
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 237
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z

    move-result v1

    .line 238
    .local v1, "result":Z
    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, p1, p2, v3, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 239
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 454
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getUnderlyingType()Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxOf(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;

    .line 458
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitDeclared_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 518
    iget-object v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 521
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 525
    .local v0, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 526
    invoke-static {v0, p1, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveAnnotationInHierarchy(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 528
    .local v1, "q1":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    .line 529
    invoke-static {v0, p2, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveAnnotationInHierarchy(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 532
    .local v2, "q2":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 533
    .local v3, "result":Ljava/lang/Boolean;
    iget-object v4, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v5, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, p1, p2, v5, v6}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 534
    return-object v3
.end method

.method public bridge synthetic visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitDeclared_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 296
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areAllEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 301
    .local v0, "result":Ljava/lang/Boolean;
    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 302
    return-object v0
.end method

.method public bridge synthetic visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 464
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getUnderlyingType()Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxOf(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->defaultErrorMessage(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/String;

    .line 468
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitPrimitive_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 315
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)Z
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 252
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, "type1Args":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "type2Args":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    return v3

    .line 259
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 260
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areAllEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    return v2

    .line 262
    :cond_1
    return v3
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 330
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->result(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object v0

    .line 331
    .local v0, "pastResult":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 332
    return-object v0

    .line 336
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 337
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isCaptured(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->boundsMatch(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 339
    nop

    .line 340
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->subtypeAndCompare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->subtypeAndCompare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 340
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 342
    .local v1, "result":Ljava/lang/Boolean;
    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 343
    return-object v1

    .line 347
    .end local v1    # "result":Ljava/lang/Boolean;
    :cond_3
    nop

    .line 348
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .line 348
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 350
    .restart local v1    # "result":Ljava/lang/Boolean;
    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 351
    return-object v1
.end method

.method public bridge synthetic visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 508
    iget-object v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 512
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->arePrimeAnnosEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitWildcard_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p3, "p"    # Ljava/lang/Void;

    .line 488
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->result(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object v0

    .line 489
    .local v0, "pastResult":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 490
    return-object v0

    .line 493
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v1, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 497
    :cond_1
    nop

    .line 498
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 498
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 501
    .local v1, "result":Ljava/lang/Boolean;
    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 502
    return-object v1
.end method

.method public bridge synthetic visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitWildcard_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p3, "p"    # Ljava/lang/Void;

    .line 432
    iget-object v0, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v1, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->result(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Boolean;

    move-result-object v0

    .line 433
    .local v0, "pastResult":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 434
    return-object v0

    .line 437
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v1, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->ignoreUninferredTypeArguments:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 442
    :cond_2
    nop

    .line 443
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->areEqual(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 443
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 445
    .local v1, "result":Ljava/lang/Boolean;
    iget-object v2, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    iget-object v3, p0, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->currentTop:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V

    .line 446
    return-object v1
.end method

.method public bridge synthetic visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/StructuralEqualityComparer;->visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
