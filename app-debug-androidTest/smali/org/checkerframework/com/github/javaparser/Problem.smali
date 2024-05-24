.class public Lorg/checkerframework/com/github/javaparser/Problem;
.super Ljava/lang/Object;
.source "Problem.java"


# static fields
.field public static PROBLEM_BY_BEGIN_POSITION:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/checkerframework/com/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final location:Lorg/checkerframework/com/github/javaparser/TokenRange;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/Problem;->PROBLEM_BY_BEGIN_POSITION:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "location"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "location",
            "cause"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/Problem;->message:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/Problem;->location:Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 43
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    .line 44
    return-void
.end method

.method static synthetic lambda$null$0(Lorg/checkerframework/com/github/javaparser/Range;)Ljava/lang/String;
    .locals 1
    .param p0, "r"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/Position;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$2(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 1
    .param p0, "r"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    return-object v0
.end method

.method static synthetic lambda$null$3(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/util/Optional;
    .locals 2
    .param p0, "l"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$4(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 1
    .param p0, "r"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    return-object v0
.end method

.method static synthetic lambda$null$5(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/util/Optional;
    .locals 2
    .param p0, "l"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$6(Lorg/checkerframework/com/github/javaparser/Problem;Lorg/checkerframework/com/github/javaparser/Problem;)I
    .locals 4
    .param p0, "a"    # Lorg/checkerframework/com/github/javaparser/Problem;
    .param p1, "b"    # Lorg/checkerframework/com/github/javaparser/Problem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 94
    .local v0, "aBegin":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/Position;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 96
    .local v1, "bBegin":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/Position;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/Position;->compareTo(Lorg/checkerframework/com/github/javaparser/Position;)I

    move-result v2

    return v2

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    const/4 v2, 0x1

    return v2

    .line 103
    :cond_3
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public getCause()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Problem;->location:Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Problem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVerboseMessage()Ljava/lang/String;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/github/javaparser/Problem;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Problem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$getVerboseMessage$1$org-checkerframework-com-github-javaparser-Problem(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/lang/String;
    .locals 3
    .param p1, "l"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->getBegin()Lorg/checkerframework/com/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/Problem$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const-string v2, "(line ?,col ?)"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Problem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/Problem;->getVerboseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 50
    sget-object v1, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Problem stacktrace : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v1

    .line 53
    .local v2, "ste":Ljava/lang/StackTraceElement;
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 55
    sget-object v3, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .end local v2    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
