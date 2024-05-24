.class Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReturnValueWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final returned:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "returned"    # Ljava/lang/Object;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;->returned:Ljava/lang/Object;

    .line 361
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$1;

    .line 355
    invoke-direct {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ReturnValueWrapper;->returned:Ljava/lang/Object;

    return-object v0
.end method
