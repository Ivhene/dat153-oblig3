.class public Lannotator/find/NewInsertion;
.super Lannotator/find/TypedInsertion;
.source "NewInsertion.java"


# static fields
.field private static final qualifiers:Ljava/util/regex/Pattern;


# instance fields
.field protected qualifyType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "(?:\\w++\\.)*+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lannotator/find/NewInsertion;->qualifiers:Ljava/util/regex/Pattern;

    return-void
.end method

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

    .line 36
    .local p3, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-direct {p0, p1, p2, p3}, Lannotator/find/TypedInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/find/NewInsertion;->annotationsOnly:Z

    .line 38
    iput-boolean v0, p0, Lannotator/find/NewInsertion;->qualifyType:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected addLeadingSpace(ZIC)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z
    .param p2, "pos"    # I
    .param p3, "precedingChar"    # C

    .line 98
    const/16 v0, 0x2e

    if-eq p3, v0, :cond_0

    const/16 v0, 0x28

    if-ne p3, v0, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lannotator/find/NewInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v0

    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lannotator/find/TypedInsertion;->addLeadingSpace(ZIC)Z

    move-result v0

    return v0
.end method

.method protected addTrailingSpace(Z)Z
    .locals 1
    .param p1, "gotSeparateLine"    # Z

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public getKind()Lannotator/find/Insertion$Kind;
    .locals 1

    .line 114
    sget-object v0, Lannotator/find/Insertion$Kind;->NEW:Lannotator/find/Insertion$Kind;

    return-object v0
.end method

.method protected getText(ZZ)Ljava/lang/String;
    .locals 8
    .param p1, "comments"    # Z
    .param p2, "abbreviate"    # Z

    .line 43
    iget-boolean v0, p0, Lannotator/find/NewInsertion;->annotationsOnly:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lannotator/find/NewInsertion;->type:Lscenelib/type/Type;

    invoke-virtual {v0}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v0

    sget-object v2, Lscenelib/type/Type$Kind;->ARRAY:Lscenelib/type/Type$Kind;

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 58
    :cond_0
    invoke-virtual {p0}, Lannotator/find/NewInsertion;->getBaseType()Lscenelib/type/DeclaredType;

    move-result-object v0

    .line 59
    .local v0, "baseType":Lscenelib/type/DeclaredType;
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 60
    .local v1, "commentAnnotation":Z
    :goto_0
    iget-object v3, p0, Lannotator/find/NewInsertion;->type:Lscenelib/type/Type;

    invoke-virtual {p0, v3, v1, p2}, Lannotator/find/NewInsertion;->typeToString(Lscenelib/type/Type;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v0}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 63
    sget-object v4, Lannotator/find/NewInsertion;->qualifiers:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 64
    .local v4, "matcher":Ljava/util/regex/Matcher;
    const-string v5, ""

    .line 65
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-nez v6, :cond_2

    .line 66
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    :cond_2
    iget-boolean v2, p0, Lannotator/find/NewInsertion;->qualifyType:Z

    if-eqz v2, :cond_3

    .line 72
    move-object v2, v0

    .local v2, "t":Lscenelib/type/DeclaredType;
    :goto_1
    if-eqz v2, :cond_3

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lscenelib/type/DeclaredType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2}, Lscenelib/type/DeclaredType;->getInnerType()Lscenelib/type/DeclaredType;

    move-result-object v2

    goto :goto_1

    .line 77
    .end local v2    # "t":Lscenelib/type/DeclaredType;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 81
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

    .line 83
    :cond_5
    return-object v2

    .line 44
    .end local v0    # "baseType":Lscenelib/type/DeclaredType;
    .end local v1    # "commentAnnotation":Z
    .end local v2    # "result":Ljava/lang/String;
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lannotator/find/NewInsertion;->type:Lscenelib/type/Type;

    invoke-virtual {v2}, Lscenelib/type/Type;->getAnnotations()Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, ""

    return-object v1

    .line 47
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "a":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .end local v4    # "a":Ljava/lang/String;
    goto :goto_3

    .line 50
    :cond_8
    new-instance v3, Lannotator/find/AnnotationInsertion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lannotator/find/NewInsertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lannotator/find/NewInsertion;->isSeparateLine()Z

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Lannotator/find/AnnotationInsertion;-><init>(Ljava/lang/String;Lannotator/find/Criteria;Z)V

    move-object v1, v3

    .line 52
    .local v1, "aIns":Lannotator/find/AnnotationInsertion;
    invoke-virtual {v1, p1, p2}, Lannotator/find/AnnotationInsertion;->getText(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 55
    .restart local v3    # "result":Ljava/lang/String;
    iget-object v4, p0, Lannotator/find/NewInsertion;->packageNames:Ljava/util/Set;

    invoke-virtual {v1}, Lannotator/find/AnnotationInsertion;->getPackageNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 56
    return-object v3
.end method

.method public setQualifyType(Z)V
    .locals 0
    .param p1, "qualifyType"    # Z

    .line 92
    iput-boolean p1, p0, Lannotator/find/NewInsertion;->qualifyType:Z

    .line 93
    return-void
.end method
