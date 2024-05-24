.class public Lscenelib/type/DeclaredType;
.super Lscenelib/type/Type;
.source "DeclaredType.java"


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "?"


# instance fields
.field private innerType:Lscenelib/type/DeclaredType;

.field private name:Ljava/lang/String;

.field private typeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lscenelib/type/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    const-string v0, ""

    invoke-direct {p0, v0}, Lscenelib/type/DeclaredType;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lscenelib/type/Type;-><init>()V

    .line 53
    iput-object p1, p0, Lscenelib/type/DeclaredType;->name:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lscenelib/type/DeclaredType;->typeParameters:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lscenelib/type/DeclaredType;->innerType:Lscenelib/type/DeclaredType;

    .line 56
    return-void
.end method

.method private checkWildcard()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lscenelib/type/DeclaredType;->isWildcard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method can\'t be called since this DeclaredType is a wildcard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addTypeParameter(Lscenelib/type/Type;)V
    .locals 1
    .param p1, "typeParameter"    # Lscenelib/type/Type;

    .line 87
    invoke-direct {p0}, Lscenelib/type/DeclaredType;->checkWildcard()V

    .line 88
    iget-object v0, p0, Lscenelib/type/DeclaredType;->typeParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public getInnerType()Lscenelib/type/DeclaredType;
    .locals 1

    .line 134
    invoke-direct {p0}, Lscenelib/type/DeclaredType;->checkWildcard()V

    .line 135
    iget-object v0, p0, Lscenelib/type/DeclaredType;->innerType:Lscenelib/type/DeclaredType;

    return-object v0
.end method

.method public getKind()Lscenelib/type/Type$Kind;
    .locals 1

    .line 140
    sget-object v0, Lscenelib/type/Type$Kind;->DECLARED:Lscenelib/type/Type$Kind;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lscenelib/type/DeclaredType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameter(I)Lscenelib/type/Type;
    .locals 1
    .param p1, "index"    # I

    .line 106
    invoke-direct {p0}, Lscenelib/type/DeclaredType;->checkWildcard()V

    .line 107
    iget-object v0, p0, Lscenelib/type/DeclaredType;->typeParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/type/Type;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lscenelib/type/Type;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lscenelib/type/DeclaredType;->checkWildcard()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lscenelib/type/DeclaredType;->typeParameters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isWildcard()Z
    .locals 2

    .line 148
    const-string v0, "?"

    iget-object v1, p0, Lscenelib/type/DeclaredType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setInnerType(Lscenelib/type/DeclaredType;)V
    .locals 0
    .param p1, "innerType"    # Lscenelib/type/DeclaredType;

    .line 125
    invoke-direct {p0}, Lscenelib/type/DeclaredType;->checkWildcard()V

    .line 126
    iput-object p1, p0, Lscenelib/type/DeclaredType;->innerType:Lscenelib/type/DeclaredType;

    .line 127
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lscenelib/type/DeclaredType;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTypeParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lscenelib/type/Type;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "typeParameters":Ljava/util/List;, "Ljava/util/List<Lscenelib/type/Type;>;"
    invoke-direct {p0}, Lscenelib/type/DeclaredType;->checkWildcard()V

    .line 97
    iput-object p1, p0, Lscenelib/type/DeclaredType;->typeParameters:Ljava/util/List;

    .line 98
    return-void
.end method
