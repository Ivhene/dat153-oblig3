.class public interface abstract Lorg/mockito/listeners/MockCreationListener;
.super Ljava/lang/Object;
.source "MockCreationListener.java"

# interfaces
.implements Lorg/mockito/listeners/MockitoListener;


# virtual methods
.method public abstract onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
.end method

.method public onStaticMockCreated(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 0
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/mock/MockCreationSettings;",
            ")V"
        }
    .end annotation

    .line 29
    .local p1, "mock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method
