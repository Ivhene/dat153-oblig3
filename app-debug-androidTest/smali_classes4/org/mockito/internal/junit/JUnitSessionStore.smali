.class Lorg/mockito/internal/junit/JUnitSessionStore;
.super Ljava/lang/Object;
.source "JUnitSessionStore.java"


# instance fields
.field private final logger:Lorg/mockito/plugins/MockitoLogger;

.field private session:Lorg/mockito/MockitoSession;

.field protected strictness:Lorg/mockito/quality/Strictness;


# direct methods
.method constructor <init>(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/quality/Strictness;)V
    .locals 0
    .param p1, "logger"    # Lorg/mockito/plugins/MockitoLogger;
    .param p2, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitSessionStore;->logger:Lorg/mockito/plugins/MockitoLogger;

    .line 23
    iput-object p2, p0, Lorg/mockito/internal/junit/JUnitSessionStore;->strictness:Lorg/mockito/quality/Strictness;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lorg/mockito/internal/junit/JUnitSessionStore;)Lorg/mockito/MockitoSession;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/junit/JUnitSessionStore;

    .line 15
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitSessionStore;->session:Lorg/mockito/MockitoSession;

    return-object v0
.end method

.method static synthetic access$002(Lorg/mockito/internal/junit/JUnitSessionStore;Lorg/mockito/MockitoSession;)Lorg/mockito/MockitoSession;
    .locals 0
    .param p0, "x0"    # Lorg/mockito/internal/junit/JUnitSessionStore;
    .param p1, "x1"    # Lorg/mockito/MockitoSession;

    .line 15
    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitSessionStore;->session:Lorg/mockito/MockitoSession;

    return-object p1
.end method

.method static synthetic access$100(Lorg/mockito/internal/junit/JUnitSessionStore;)Lorg/mockito/plugins/MockitoLogger;
    .locals 1
    .param p0, "x0"    # Lorg/mockito/internal/junit/JUnitSessionStore;

    .line 15
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitSessionStore;->logger:Lorg/mockito/plugins/MockitoLogger;

    return-object v0
.end method


# virtual methods
.method createStatement(Lorg/junit/runners/model/Statement;Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/Object;

    .line 27
    new-instance v0, Lorg/mockito/internal/junit/JUnitSessionStore$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/mockito/internal/junit/JUnitSessionStore$1;-><init>(Lorg/mockito/internal/junit/JUnitSessionStore;Ljava/lang/String;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method

.method setStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 65
    iput-object p1, p0, Lorg/mockito/internal/junit/JUnitSessionStore;->strictness:Lorg/mockito/quality/Strictness;

    .line 68
    iget-object v0, p0, Lorg/mockito/internal/junit/JUnitSessionStore;->session:Lorg/mockito/MockitoSession;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1}, Lorg/mockito/MockitoSession;->setStrictness(Lorg/mockito/quality/Strictness;)V

    .line 71
    :cond_0
    return-void
.end method
