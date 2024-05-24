.class public Lannotator/find/ConstructorInsertion;
.super Lannotator/find/TypedInsertion;
.source "ConstructorInsertion.java"


# instance fields
.field private declarationInsertions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation
.end field

.field private receiverInsertion:Lannotator/find/ReceiverInsertion;


# direct methods
.method public constructor <init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lscenelib/type/Type;
    .param p2, "criteria"    # Lannotator/find/Criteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/type/Type;",
            "Lannotator/find/Criteria;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p3, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lannotator/find/TypedInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;ZLjava/util/List;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lannotator/find/ConstructorInsertion;->receiverInsertion:Lannotator/find/ReceiverInsertion;

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lannotator/find/ConstructorInsertion;->declarationInsertions:Ljava/util/Set;

    .line 28
    return-void
.end method


# virtual methods
.method public addDeclarationInsertion(Lannotator/find/Insertion;)V
    .locals 1
    .param p1, "ins"    # Lannotator/find/Insertion;

    .line 79
    iget-object v0, p0, Lannotator/find/ConstructorInsertion;->declarationInsertions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lannotator/find/Insertion;->setInserted(Z)V

    .line 81
    return-void
.end method

.method protected addLeadingSpace(ZIC)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z
    .param p2, "pos"    # I
    .param p3, "precedingChar"    # C

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public addReceiverInsertion(Lannotator/find/ReceiverInsertion;)V
    .locals 2
    .param p1, "recv"    # Lannotator/find/ReceiverInsertion;

    .line 70
    iget-object v0, p0, Lannotator/find/ConstructorInsertion;->receiverInsertion:Lannotator/find/ReceiverInsertion;

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Lannotator/find/ConstructorInsertion;->receiverInsertion:Lannotator/find/ReceiverInsertion;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lannotator/find/ReceiverInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lannotator/find/ReceiverInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :goto_0
    return-void
.end method

.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getKind()Lannotator/find/Insertion$Kind;
    .locals 1

    .line 96
    sget-object v0, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    return-object v0
.end method

.method protected getReceiverInsertion()Lannotator/find/ReceiverInsertion;
    .locals 1

    .line 66
    iget-object v0, p0, Lannotator/find/ConstructorInsertion;->receiverInsertion:Lannotator/find/ReceiverInsertion;

    return-object v0
.end method

.method protected getText(ZZ)Ljava/lang/String;
    .locals 8
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lannotator/find/ConstructorInsertion;->annotationsOnly:Z

    if-eqz v1, :cond_0

    .line 42
    const-string v1, ""

    return-object v1

    .line 44
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lannotator/find/ConstructorInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v2

    invoke-virtual {v2}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 46
    .local v2, "commentAnnotation":Z
    :goto_0
    iget-object v3, p0, Lannotator/find/ConstructorInsertion;->type:Lscenelib/type/Type;

    invoke-virtual {p0, v3, v2, v1}, Lannotator/find/ConstructorInsertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "typeString":Ljava/lang/String;
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 48
    .local v3, "ix":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v4, p0, Lannotator/find/ConstructorInsertion;->declarationInsertions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lannotator/find/Insertion;

    .line 51
    .local v5, "i":Lannotator/find/Insertion;
    invoke-virtual {v5, v2, p2}, Lannotator/find/Insertion;->getText(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    if-eqz p2, :cond_2

    .line 53
    iget-object v6, p0, Lannotator/find/ConstructorInsertion;->packageNames:Ljava/util/Set;

    invoke-virtual {v5}, Lannotator/find/Insertion;->getPackageNames()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 55
    .end local v5    # "i":Lannotator/find/Insertion;
    :cond_2
    goto :goto_1

    .line 56
    :cond_3
    const-string v4, "public "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v4, p0, Lannotator/find/ConstructorInsertion;->receiverInsertion:Lannotator/find/ReceiverInsertion;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lannotator/find/ReceiverInsertion;->isInserted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 58
    iget-object v4, p0, Lannotator/find/ConstructorInsertion;->receiverInsertion:Lannotator/find/ReceiverInsertion;

    invoke-virtual {v4, p1, p2}, Lannotator/find/ReceiverInsertion;->getText(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_4
    const-string v4, ") { super(); }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setInserted(Z)V
    .locals 3
    .param p1, "inserted"    # Z

    .line 105
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lannotator/find/TypedInsertion;->setInserted(Z)V

    .line 106
    iget-object v1, p0, Lannotator/find/ConstructorInsertion;->receiverInsertion:Lannotator/find/ReceiverInsertion;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1, v0}, Lannotator/find/ReceiverInsertion;->setInserted(Z)V

    .line 109
    :cond_0
    iget-object v1, p0, Lannotator/find/ConstructorInsertion;->declarationInsertions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lannotator/find/Insertion;

    .line 110
    .local v2, "insertion":Lannotator/find/Insertion;
    invoke-virtual {v2, v0}, Lannotator/find/Insertion;->setInserted(Z)V

    .line 111
    .end local v2    # "insertion":Lannotator/find/Insertion;
    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method
