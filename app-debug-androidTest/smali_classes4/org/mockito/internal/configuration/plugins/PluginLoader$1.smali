.class Lorg/mockito/internal/configuration/plugins/PluginLoader$1;
.super Ljava/lang/Object;
.source "PluginLoader.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/configuration/plugins/PluginLoader;

.field final synthetic val$alternatePluginType:Ljava/lang/Class;

.field final synthetic val$preferredPluginType:Ljava/lang/Class;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/plugins/PluginLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/configuration/plugins/PluginLoader;

    .line 80
    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->this$0:Lorg/mockito/internal/configuration/plugins/PluginLoader;

    iput-object p2, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$preferredPluginType:Ljava/lang/Class;

    iput-object p3, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$alternatePluginType:Ljava/lang/Class;

    iput-object p4, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not initialize plugin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$preferredPluginType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (alternate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$alternatePluginType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$t:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
