.class Lorg/mockito/internal/runners/RunnerFactory$2;
.super Ljava/lang/Object;
.source "RunnerFactory.java"

# interfaces
.implements Lorg/mockito/internal/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/runners/RunnerFactory;->createStrict(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/Supplier<",
        "Lorg/mockito/internal/junit/MockitoTestListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/runners/RunnerFactory;


# direct methods
.method constructor <init>(Lorg/mockito/internal/runners/RunnerFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/runners/RunnerFactory;

    .line 42
    iput-object p1, p0, Lorg/mockito/internal/runners/RunnerFactory$2;->this$0:Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/mockito/internal/runners/RunnerFactory$2;->get()Lorg/mockito/internal/junit/MockitoTestListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/mockito/internal/junit/MockitoTestListener;
    .locals 2

    .line 44
    new-instance v0, Lorg/mockito/internal/junit/MismatchReportingTestListener;

    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/junit/MismatchReportingTestListener;-><init>(Lorg/mockito/plugins/MockitoLogger;)V

    return-object v0
.end method
