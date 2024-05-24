.class Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;
.super Ljava/lang/Object;
.source "ObjenesisInstantiator.java"

# interfaces
.implements Lorg/mockito/creation/instance/Instantiator;


# instance fields
.field private final objenesis:Lorg/objenesis/ObjenesisStd;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/objenesis/ObjenesisStd;

    new-instance v1, Lorg/mockito/internal/configuration/GlobalConfiguration;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/GlobalConfiguration;-><init>()V

    .line 18
    invoke-virtual {v1}, Lorg/mockito/internal/configuration/GlobalConfiguration;->enableClassCache()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/objenesis/ObjenesisStd;-><init>(Z)V

    iput-object v0, p0, Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;->objenesis:Lorg/objenesis/ObjenesisStd;

    .line 17
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 22
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;->objenesis:Lorg/objenesis/ObjenesisStd;

    invoke-virtual {v0, p1}, Lorg/objenesis/ObjenesisStd;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
