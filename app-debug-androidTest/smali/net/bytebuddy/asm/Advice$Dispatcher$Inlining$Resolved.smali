.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Resolved"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodExit;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;
    }
.end annotation


# instance fields
.field protected final classReader:Lnet/bytebuddy/jar/asm/ClassReader;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassReader;)V
    .locals 7
    .param p1, "adviceMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "postProcessor"    # Lnet/bytebuddy/asm/Advice$PostProcessor;
    .param p4, "throwableType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p5, "relocatableType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p6, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            ")V"
        }
    .end annotation

    .line 7713
    .local p3, "factories":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<*>;>;"
    sget-object v6, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->INLINING:Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)V

    .line 7714
    iput-object p6, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->classReader:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 7715
    return-void
.end method


# virtual methods
.method protected abstract apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/jar/asm/MethodVisitor;
.end method

.method protected abstract resolveInitializationTypes(Lnet/bytebuddy/asm/Advice$ArgumentHandler;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end method
