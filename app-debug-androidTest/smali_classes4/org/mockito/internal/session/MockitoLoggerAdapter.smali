.class Lorg/mockito/internal/session/MockitoLoggerAdapter;
.super Ljava/lang/Object;
.source "MockitoLoggerAdapter.java"

# interfaces
.implements Lorg/mockito/plugins/MockitoLogger;


# instance fields
.field private final logger:Lorg/mockito/session/MockitoSessionLogger;


# direct methods
.method constructor <init>(Lorg/mockito/session/MockitoSessionLogger;)V
    .locals 0
    .param p1, "logger"    # Lorg/mockito/session/MockitoSessionLogger;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/mockito/internal/session/MockitoLoggerAdapter;->logger:Lorg/mockito/session/MockitoSessionLogger;

    .line 16
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lorg/mockito/internal/session/MockitoLoggerAdapter;->logger:Lorg/mockito/session/MockitoSessionLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/session/MockitoSessionLogger;->log(Ljava/lang/String;)V

    .line 21
    return-void
.end method
