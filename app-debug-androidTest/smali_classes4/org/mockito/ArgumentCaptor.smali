.class public Lorg/mockito/ArgumentCaptor;
.super Ljava/lang/Object;
.source "ArgumentCaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/matchers/CapturingMatcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/mockito/ArgumentCaptor;, "Lorg/mockito/ArgumentCaptor<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-direct {v0}, Lorg/mockito/internal/matchers/CapturingMatcher;-><init>()V

    iput-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    .line 68
    iput-object p1, p0, Lorg/mockito/ArgumentCaptor;->clazz:Ljava/lang/Class;

    .line 69
    return-void
.end method

.method public static forClass(Ljava/lang/Class;)Lorg/mockito/ArgumentCaptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:TU;>(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Lorg/mockito/ArgumentCaptor<",
            "TU;>;"
        }
    .end annotation

    .line 148
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    new-instance v0, Lorg/mockito/ArgumentCaptor;

    invoke-direct {v0, p0}, Lorg/mockito/ArgumentCaptor;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public capture()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/mockito/ArgumentCaptor;, "Lorg/mockito/ArgumentCaptor<TT;>;"
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-static {v0}, Lorg/mockito/Mockito;->argThat(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->clazz:Ljava/lang/Class;

    invoke-static {v0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/mockito/ArgumentCaptor;, "Lorg/mockito/ArgumentCaptor<TT;>;"
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-virtual {v0}, Lorg/mockito/internal/matchers/CapturingMatcher;->getAllValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/mockito/ArgumentCaptor;, "Lorg/mockito/ArgumentCaptor<TT;>;"
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-virtual {v0}, Lorg/mockito/internal/matchers/CapturingMatcher;->getLastValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
