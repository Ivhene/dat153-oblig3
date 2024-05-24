.class public Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "ByteCodeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/ByteCodeElement$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "TS;>;>",
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "TS;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
        "TS;>;>;"
    }
.end annotation


# instance fields
.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TS;>;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<+TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    .line 148
    iput-object p1, p0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->tokens:Ljava/util/List;

    .line 149
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/ByteCodeElement$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    .local p1, "token":[Lnet/bytebuddy/description/ByteCodeElement$Token;, "[TS;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    .line 140
    return-void
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "TS;>;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    .local p1, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<TS;>;"
    iget-object v1, p0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/ByteCodeElement$Token;

    .line 160
    .local v2, "token":Lnet/bytebuddy/description/ByteCodeElement$Token;, "TS;"
    invoke-interface {v2, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "token":Lnet/bytebuddy/description/ByteCodeElement$Token;, "TS;"
    goto :goto_0

    .line 162
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 125
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->get(I)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/ByteCodeElement$Token;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 181
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected wrap(Ljava/util/List;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TS;>;)",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "TS;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<TS;>;"
    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    .line 125
    .local p0, "this":Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;, "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->wrap(Ljava/util/List;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object p1

    return-object p1
.end method
