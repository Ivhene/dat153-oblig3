.class public Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;
.super Ljava/lang/Object;
.source "HamcrestArgumentMatcher.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;, "Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher<TT;>;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 18
    return-void
.end method


# virtual methods
.method public isVarargMatcher()Z
    .locals 1

    .line 26
    .local p0, "this":Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;, "Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    instance-of v0, v0, Lorg/mockito/internal/matchers/VarargMatcher;

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "argument"    # Ljava/lang/Object;

    .line 22
    .local p0, "this":Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;, "Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    .local p0, "this":Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;, "Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Lorg/hamcrest/StringDescription;->toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
