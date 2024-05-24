.class public Lnet/bytebuddy/matcher/FailSafeMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "FailSafeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fallback:Z

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Z)V
    .locals 0
    .param p2, "fallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lnet/bytebuddy/matcher/FailSafeMatcher;, "Lnet/bytebuddy/matcher/FailSafeMatcher<TT;>;"
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 45
    iput-object p1, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 46
    iput-boolean p2, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->fallback:Z

    .line 47
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
    iget-boolean v2, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->fallback:Z

    check-cast p1, Lnet/bytebuddy/matcher/FailSafeMatcher;

    iget-boolean v3, p1, Lnet/bytebuddy/matcher/FailSafeMatcher;->fallback:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/FailSafeMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/FailSafeMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->fallback:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 54
    .local p0, "this":Lnet/bytebuddy/matcher/FailSafeMatcher;, "Lnet/bytebuddy/matcher/FailSafeMatcher<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ignored":Ljava/lang/Exception;
    iget-boolean v1, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->fallback:Z

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    .local p0, "this":Lnet/bytebuddy/matcher/FailSafeMatcher;, "Lnet/bytebuddy/matcher/FailSafeMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failSafe(try("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/bytebuddy/matcher/FailSafeMatcher;->fallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
