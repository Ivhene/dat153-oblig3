.class final Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;
.super Lorg/checkerframework/com/google/common/reflect/TypeToken;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleTypeToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 1285
    .local p0, "this":Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken$SimpleTypeToken<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;Lorg/checkerframework/com/google/common/reflect/TypeToken$1;)V

    .line 1286
    return-void
.end method
