.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5142
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    .line 5137
    filled-new-array {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5137
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;
    .locals 1

    .line 5137
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator$NoOp;

    return-object v0
.end method


# virtual methods
.method public decorate(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 0
    .param p1, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 5148
    return-object p1
.end method
