.class public Lnet/bytebuddy/matcher/ModifierMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "ModifierMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/ModifierReviewable;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final mode:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V
    .locals 0
    .param p1, "mode"    # Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 52
    .local p0, "this":Lnet/bytebuddy/matcher/ModifierMatcher;, "Lnet/bytebuddy/matcher/ModifierMatcher<TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 53
    iput-object p1, p0, Lnet/bytebuddy/matcher/ModifierMatcher;->mode:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    .line 54
    return-void
.end method

.method public static of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .param p0, "mode"    # Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable;",
            ">(",
            "Lnet/bytebuddy/matcher/ModifierMatcher$Mode;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->getMatcher()Lnet/bytebuddy/matcher/ModifierMatcher;

    move-result-object v0

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/matcher/ModifierMatcher;->mode:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    check-cast p1, Lnet/bytebuddy/matcher/ModifierMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/ModifierMatcher;->mode:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/ModifierMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/ModifierMatcher;->mode:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-virtual {v1}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    .local p0, "this":Lnet/bytebuddy/matcher/ModifierMatcher;, "Lnet/bytebuddy/matcher/ModifierMatcher<TT;>;"
    check-cast p1, Lnet/bytebuddy/description/ModifierReviewable;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/ModifierMatcher;->matches(Lnet/bytebuddy/description/ModifierReviewable;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/ModifierReviewable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 60
    .local p0, "this":Lnet/bytebuddy/matcher/ModifierMatcher;, "Lnet/bytebuddy/matcher/ModifierMatcher<TT;>;"
    .local p1, "target":Lnet/bytebuddy/description/ModifierReviewable;, "TT;"
    iget-object v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher;->mode:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-virtual {v0}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->getModifiers()I

    move-result v0

    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    .local p0, "this":Lnet/bytebuddy/matcher/ModifierMatcher;, "Lnet/bytebuddy/matcher/ModifierMatcher<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher;->mode:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-virtual {v0}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
