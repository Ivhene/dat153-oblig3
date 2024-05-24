.class public final synthetic Lorg/mockito/internal/junit/ExceptionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/internal/junit/ExceptionFactory$ExceptionFactoryImpl;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/AssertionError;
    .locals 1

    new-instance v0, Lorg/mockito/exceptions/verification/opentest4j/ArgumentsAreDifferent;

    invoke-direct {v0, p1, p2, p3}, Lorg/mockito/exceptions/verification/opentest4j/ArgumentsAreDifferent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/AssertionError;

    return-object v0
.end method
