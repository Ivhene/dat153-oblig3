.class public Lannotator/find/ReceiverInsertion;
.super Lannotator/find/TypedInsertion;
.source "ReceiverInsertion.java"


# instance fields
.field private addComma:Z

.field private qualifyThis:Z


# direct methods
.method public constructor <init>(Lscenelib/type/DeclaredType;Lannotator/find/Criteria;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lscenelib/type/DeclaredType;
    .param p2, "criteria"    # Lannotator/find/Criteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/type/DeclaredType;",
            "Lannotator/find/Criteria;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p3, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-direct {p0, p1, p2, p3}, Lannotator/find/TypedInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/find/ReceiverInsertion;->addComma:Z

    .line 48
    iput-boolean v0, p0, Lannotator/find/ReceiverInsertion;->qualifyThis:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected addLeadingSpace(ZIC)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z
    .param p2, "pos"    # I
    .param p3, "precedingChar"    # C

    .line 112
    const/16 v0, 0x2e

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Lannotator/find/ReceiverInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lannotator/find/TypedInsertion;->addLeadingSpace(ZIC)Z

    move-result v0

    return v0
.end method

.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 124
    invoke-virtual {p0}, Lannotator/find/ReceiverInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lannotator/find/ReceiverInsertion;->addComma:Z

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lannotator/find/TypedInsertion;->addTrailingSpace(Z)Z

    move-result v0

    return v0
.end method

.method public getKind()Lannotator/find/Insertion$Kind;
    .locals 1

    .line 132
    sget-object v0, Lannotator/find/Insertion$Kind;->RECEIVER:Lannotator/find/Insertion$Kind;

    return-object v0
.end method

.method protected getText(ZZ)Ljava/lang/String;
    .locals 6
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z

    .line 75
    iget-boolean v0, p0, Lannotator/find/ReceiverInsertion;->annotationsOnly:Z

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lannotator/find/ReceiverInsertion;->type:Lscenelib/type/Type;

    invoke-virtual {v1}, Lscenelib/type/Type;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    return-object v2

    .line 79
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "a":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .end local v3    # "a":Ljava/lang/String;
    goto :goto_0

    .line 83
    :cond_1
    new-instance v2, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lannotator/find/ReceiverInsertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v4

    .line 84
    invoke-virtual {p0}, Lannotator/find/ReceiverInsertion;->isSeparateLine()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lannotator/find/AnnotationInsertion;-><init>(Ljava/lang/String;Lannotator/find/Criteria;Z)V

    invoke-virtual {v2, p1, p2}, Lannotator/find/AnnotationInsertion;->getText(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 83
    return-object v2

    .line 86
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lannotator/find/ReceiverInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v0

    .line 87
    .local v0, "baseType":Lscenelib/type/DeclaredType;
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 88
    .local v1, "commentAnnotation":Z
    :goto_1
    iget-object v2, p0, Lannotator/find/ReceiverInsertion;->type:Lscenelib/type/Type;

    invoke-virtual {p0, v2, v1, p2}, Lannotator/find/ReceiverInsertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-boolean v3, p0, Lannotator/find/ReceiverInsertion;->qualifyThis:Z

    if-eqz v3, :cond_4

    .line 92
    move-object v3, v0

    .local v3, "t":Lscenelib/type/DeclaredType;
    :goto_2
    if-eqz v3, :cond_4

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v3}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v3

    goto :goto_2

    .line 97
    .end local v3    # "t":Lscenelib/type/DeclaredType;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "this"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-boolean v3, p0, Lannotator/find/ReceiverInsertion;->addComma:Z

    if-eqz v3, :cond_5

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    :cond_5
    if-eqz p1, :cond_6

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/*>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " */"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_6
    return-object v2
.end method

.method public setAddComma(Z)V
    .locals 0
    .param p1, "addComma"    # Z

    .line 59
    iput-boolean p1, p0, Lannotator/find/ReceiverInsertion;->addComma:Z

    .line 60
    return-void
.end method

.method public setQualifyType(Z)V
    .locals 0
    .param p1, "qualifyThis"    # Z

    .line 70
    iput-boolean p1, p0, Lannotator/find/ReceiverInsertion;->qualifyThis:Z

    .line 71
    return-void
.end method
