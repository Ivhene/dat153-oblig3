.class Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter$1;
.super Ljava/lang/Object;
.source "InstantiatorProvider2Adapter.java"

# interfaces
.implements Lorg/mockito/internal/creation/instance/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/internal/creation/instance/Instantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;

.field final synthetic val$settings:Lorg/mockito/mock/MockCreationSettings;


# direct methods
.method constructor <init>(Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;

    .line 23
    iput-object p1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter$1;->this$0:Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;

    iput-object p2, p0, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter$1;->val$settings:Lorg/mockito/mock/MockCreationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 27
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter$1;->this$0:Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;

    invoke-static {v0}, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;->access$000(Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter;)Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/instance/InstantiatorProvider2Adapter$1;->val$settings:Lorg/mockito/mock/MockCreationSettings;

    invoke-interface {v0, v1}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/mockito/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/mockito/creation/instance/InstantiationException;
    new-instance v1, Lorg/mockito/internal/creation/instance/InstantiationException;

    invoke-virtual {v0}, Lorg/mockito/creation/instance/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mockito/creation/instance/InstantiationException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/mockito/internal/creation/instance/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
