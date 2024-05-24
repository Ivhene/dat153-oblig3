.class public Lannotator/specification/CriterionList;
.super Ljava/lang/Object;
.source "CriterionList.java"


# instance fields
.field private current:Lannotator/find/Criterion;

.field private next:Lannotator/specification/CriterionList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lannotator/specification/CriterionList;->next:Lannotator/specification/CriterionList;

    .line 38
    iput-object v0, p0, Lannotator/specification/CriterionList;->current:Lannotator/find/Criterion;

    .line 39
    return-void
.end method

.method public constructor <init>(Lannotator/find/Criterion;)V
    .locals 1
    .param p1, "c"    # Lannotator/find/Criterion;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lannotator/specification/CriterionList;->current:Lannotator/find/Criterion;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lannotator/specification/CriterionList;->next:Lannotator/specification/CriterionList;

    .line 49
    return-void
.end method

.method private constructor <init>(Lannotator/find/Criterion;Lannotator/specification/CriterionList;)V
    .locals 0
    .param p1, "c"    # Lannotator/find/Criterion;
    .param p2, "n"    # Lannotator/specification/CriterionList;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lannotator/specification/CriterionList;->current:Lannotator/find/Criterion;

    .line 53
    iput-object p2, p0, Lannotator/specification/CriterionList;->next:Lannotator/specification/CriterionList;

    .line 54
    return-void
.end method


# virtual methods
.method public add(Lannotator/find/Criterion;)Lannotator/specification/CriterionList;
    .locals 1
    .param p1, "c"    # Lannotator/find/Criterion;

    .line 66
    new-instance v0, Lannotator/specification/CriterionList;

    invoke-direct {v0, p1, p0}, Lannotator/specification/CriterionList;-><init>(Lannotator/find/Criterion;Lannotator/specification/CriterionList;)V

    return-object v0
.end method

.method public criteria()Lannotator/find/Criteria;
    .locals 3

    .line 75
    new-instance v0, Lannotator/find/Criteria;

    invoke-direct {v0}, Lannotator/find/Criteria;-><init>()V

    .line 77
    .local v0, "criteria":Lannotator/find/Criteria;
    move-object v1, p0

    .line 78
    .local v1, "c":Lannotator/specification/CriterionList;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lannotator/specification/CriterionList;->current:Lannotator/find/Criterion;

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v0, v2}, Lannotator/find/Criteria;->add(Lannotator/find/Criterion;)V

    .line 80
    iget-object v1, v1, Lannotator/specification/CriterionList;->next:Lannotator/specification/CriterionList;

    goto :goto_0

    .line 83
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 88
    iget-object v0, p0, Lannotator/specification/CriterionList;->current:Lannotator/find/Criterion;

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lannotator/specification/CriterionList;->current:Lannotator/find/Criterion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lannotator/specification/CriterionList;->next:Lannotator/specification/CriterionList;

    .local v1, "n":Lannotator/specification/CriterionList;
    :goto_0
    iget-object v2, v1, Lannotator/specification/CriterionList;->next:Lannotator/specification/CriterionList;

    if-eqz v2, :cond_1

    .line 91
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lannotator/specification/CriterionList;->current:Lannotator/find/Criterion;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, v1, Lannotator/specification/CriterionList;->next:Lannotator/specification/CriterionList;

    goto :goto_0

    .line 93
    .end local v1    # "n":Lannotator/specification/CriterionList;
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
