.class public Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "ElementMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/ElementMatcher$Junction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Disjunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TW;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TW;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TW;>;>;)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction<TW;>;"
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/matcher/ElementMatcher;

    .line 199
    .local v1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;"
    instance-of v2, v1, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;

    iget-object v3, v3, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 202
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v1    # "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;"
    :goto_1
    goto :goto_0

    .line 205
    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TW;>;)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction<TW;>;"
    .local p1, "matcher":[Lnet/bytebuddy/matcher/ElementMatcher;, "[Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;-><init>(Ljava/util/List;)V

    .line 188
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;

    iget-object p1, p1, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)Z"
        }
    .end annotation

    .line 211
    .local p0, "this":Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction<TW;>;"
    .local p1, "target":Ljava/lang/Object;, "TW;"
    iget-object v0, p0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/matcher/ElementMatcher;

    .line 212
    .local v1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;"
    invoke-interface {v1, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const/4 v0, 0x1

    return v0

    .line 215
    .end local v1    # "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;"
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 221
    .local p0, "this":Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction<TW;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 223
    .local v1, "first":Z
    iget-object v2, p0, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Disjunction;->matchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/matcher/ElementMatcher;

    .line 224
    .local v3, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;"
    if-eqz v1, :cond_0

    .line 225
    const/4 v1, 0x0

    goto :goto_1

    .line 227
    :cond_0
    const-string v4, " or "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .end local v3    # "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TW;>;"
    goto :goto_0

    .line 231
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
