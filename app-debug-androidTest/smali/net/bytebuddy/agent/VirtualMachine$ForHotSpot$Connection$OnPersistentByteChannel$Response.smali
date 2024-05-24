.class Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field private final connection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 628
    .local p0, "this":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;, "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel<TT;>.Response;"
    .local p2, "connection":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;->this$0:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;->connection:Ljava/lang/Object;

    .line 630
    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;Ljava/lang/Object;Lnet/bytebuddy/agent/VirtualMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lnet/bytebuddy/agent/VirtualMachine$1;

    .line 616
    .local p0, "this":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;, "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel<TT;>.Response;"
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;-><init>(Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    .local p0, "this":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;, "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel<TT;>.Response;"
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;->this$0:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;->connection:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->close(Ljava/lang/Object;)V

    .line 644
    return-void
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    .local p0, "this":Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;, "Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel<TT;>.Response;"
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;->this$0:Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;

    iget-object v1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel$Response;->connection:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$OnPersistentByteChannel;->read(Ljava/lang/Object;[B)I

    move-result v0

    return v0
.end method
