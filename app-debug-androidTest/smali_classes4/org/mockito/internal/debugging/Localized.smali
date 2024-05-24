.class public Lorg/mockito/internal/debugging/Localized;
.super Ljava/lang/Object;
.source "Localized.java"


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
.field private final location:Lorg/mockito/invocation/Location;

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lorg/mockito/internal/debugging/Localized;, "Lorg/mockito/internal/debugging/Localized<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/mockito/internal/debugging/Localized;->object:Ljava/lang/Object;

    .line 16
    new-instance v0, Lorg/mockito/internal/debugging/LocationImpl;

    invoke-direct {v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/debugging/Localized;->location:Lorg/mockito/invocation/Location;

    .line 17
    return-void
.end method


# virtual methods
.method public getLocation()Lorg/mockito/invocation/Location;
    .locals 1

    .line 24
    .local p0, "this":Lorg/mockito/internal/debugging/Localized;, "Lorg/mockito/internal/debugging/Localized<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/debugging/Localized;->location:Lorg/mockito/invocation/Location;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    .local p0, "this":Lorg/mockito/internal/debugging/Localized;, "Lorg/mockito/internal/debugging/Localized<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/debugging/Localized;->object:Ljava/lang/Object;

    return-object v0
.end method
