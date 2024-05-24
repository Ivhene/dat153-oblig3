.class public Lorg/checkerframework/com/github/javaparser/TokenRange;
.super Ljava/lang/Object;
.source "TokenRange.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/checkerframework/com/github/javaparser/JavaToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:Lorg/checkerframework/com/github/javaparser/TokenRange;


# instance fields
.field private final begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

.field private final end:Lorg/checkerframework/com/github/javaparser/JavaToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/JavaToken;->INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/JavaToken;->INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/TokenRange;->INVALID:Lorg/checkerframework/com/github/javaparser/TokenRange;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 1
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .param p2, "end"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 19
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/JavaToken;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->end:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 11
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 11
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->end:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-object v0
.end method


# virtual methods
.method public getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-object v0
.end method

.method public getEnd()Lorg/checkerframework/com/github/javaparser/JavaToken;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->end:Lorg/checkerframework/com/github/javaparser/JavaToken;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/TokenRange$1;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    return-object v0
.end method

.method public toRange()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->end:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v1, v1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->end:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Range;

    iget-object v2, v2, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/Range;-><init>(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 49
    .local v2, "t":Lorg/checkerframework/com/github/javaparser/JavaToken;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .end local v2    # "t":Lorg/checkerframework/com/github/javaparser/JavaToken;
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBegin(Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 3
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "begin"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/JavaToken;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->end:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0
.end method

.method public withEnd(Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/TokenRange;
    .locals 3
    .param p1, "end"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/TokenRange;->begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-object v0
.end method
