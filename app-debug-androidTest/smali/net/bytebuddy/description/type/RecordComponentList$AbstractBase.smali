.class public abstract Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "RecordComponentList.java"

# interfaces
.implements Lnet/bytebuddy/description/type/RecordComponentList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/type/RecordComponentDescription;",
        ">",
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "TS;",
        "Lnet/bytebuddy/description/type/RecordComponentList<",
        "TS;>;>;",
        "Lnet/bytebuddy/description/type/RecordComponentList<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;, "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public asDefined()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;, "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, "recordComponents":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 92
    .local v2, "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/RecordComponentDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2    # "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
            ">;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;, "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<TS;>;"
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/RecordComponentDescription$Token;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 70
    .local v2, "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    invoke-interface {v2, p1}, Lnet/bytebuddy/description/type/RecordComponentDescription;->asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 79
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;, "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v0, "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/RecordComponentDescription;

    .line 81
    .local v2, "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/RecordComponentDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v2    # "recordComponentDescription":Lnet/bytebuddy/description/type/RecordComponentDescription;
    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TS;>;)",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "TS;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;, "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<TS;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<TS;>;"
    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    .line 62
    .local p0, "this":Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;, "Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/RecordComponentList$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object p1

    return-object p1
.end method
