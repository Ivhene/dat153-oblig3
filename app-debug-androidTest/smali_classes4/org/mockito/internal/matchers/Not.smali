.class public Lorg/mockito/internal/matchers/Not;
.super Ljava/lang/Object;
.source "Not.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final matcher:Lorg/mockito/ArgumentMatcher;


# direct methods
.method public constructor <init>(Lorg/mockito/ArgumentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation

    .line 16
    .local p1, "matcher":Lorg/mockito/ArgumentMatcher;, "Lorg/mockito/ArgumentMatcher<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/matchers/Not;->matcher:Lorg/mockito/ArgumentMatcher;

    .line 18
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "actual"    # Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lorg/mockito/internal/matchers/Not;->matcher:Lorg/mockito/ArgumentMatcher;

    invoke-interface {v0, p1}, Lorg/mockito/ArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/Not;->matcher:Lorg/mockito/ArgumentMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
