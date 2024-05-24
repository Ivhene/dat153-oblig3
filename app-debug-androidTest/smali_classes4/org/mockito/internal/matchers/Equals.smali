.class public Lorg/mockito/internal/matchers/Equals;
.super Ljava/lang/Object;
.source "Equals.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/mockito/internal/matchers/ContainsExtraTypeInfo;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final wanted:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "wanted"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method private describe(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 31
    invoke-static {p1}, Lorg/mockito/internal/matchers/text/ValuePrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Lorg/mockito/internal/matchers/Equals;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    return v1

    .line 43
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/matchers/Equals;

    .line 44
    .local v0, "other":Lorg/mockito/internal/matchers/Equals;
    iget-object v2, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v3, v0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    iget-object v3, v0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 44
    :goto_0
    return v1
.end method

.method protected final getWanted()Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "actual"    # Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mockito/internal/matchers/Equality;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/mockito/internal/matchers/Equals;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringWithType()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/mockito/internal/matchers/Equals;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeMatches(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/Equals;->wanted:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
