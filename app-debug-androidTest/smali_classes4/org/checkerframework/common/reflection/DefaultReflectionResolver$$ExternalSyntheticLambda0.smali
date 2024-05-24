.class public final synthetic Lorg/checkerframework/common/reflection/DefaultReflectionResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sun/tools/javac/comp/Resolve$RecoveryLoadClass;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadClass(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;
    .locals 0

    invoke-static {p1, p2}, Lorg/checkerframework/common/reflection/DefaultReflectionResolver;->lambda$getSymbol$0(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method
